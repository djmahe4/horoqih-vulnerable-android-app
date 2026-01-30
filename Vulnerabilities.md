# Vulnerabilities & Fixes Report

This document maps the vulnerabilities identified in the source code during the investigation.

---

### 1. SQL Injection (Authentication Bypass)
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali` (Around Line 26)
**Context:** Logic inside the `/login` endpoint.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Stop sticking strings together to make SQL queries.
1.  **Bad:** `"SELECT * FROM users WHERE user='" + username + "'"`
2.  **Good:** Use "Parameterized Queries".
    *   Change the query to: `"SELECT * FROM users WHERE user=? AND pass=?"`
    *   Pass the variables `username` and `password` as a separate array argument to `rawQuery()`.
    *   This ensures the database treats input as text, not executable code.
</details>

---

### 2. Hardcoded Credentials
**Location:** `app_src/smali/com/horoqih/app/DatabaseHelper.smali` (Lines 24-30)
**Context:** `onCreate` method inserting default users.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Never write passwords directly in the code.
1.  Remove the `INSERT` statements that contain `admin123`.
2.  If you need default accounts for testing, create them via a secure registration screen during the first run.
3.  For admin access, use a secure configuration file or backend management, not hardcoded strings in the app.
</details>

---

### 3. Plaintext Password Storage
**Location:** `app_src/smali/com/horoqih/app/DatabaseHelper.smali`
**Context:** Database table definition (`users` table).

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Never store passwords as plain text.
1.  Before saving a password to the database, **Hash it**.
2.  Use a strong algorithm like **Argon2** or **Bcrypt**.
3.  When a user logs in, hash their input and compare the hashes. You never compare the actual text.
</details>

---

### 4. Insecure Direct Object Reference (IDOR)
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali` (Around Line 59)
**Context:** `/dashboard` endpoint using `userId` parameter.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Don't trust the client to tell you who they are.
1.  Ignore the `userId` sent in the URL/body.
2.  Look at the **Session** (cookie or token) to determine who is currently logged in.
3.  Only load data for the user ID found in that secure session.
</details>

---

### 5. Price Manipulation
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali` (Around Line 96)
**Context:** `/purchase` endpoint reading `price` from JSON.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
The client should not tell the server how much something costs.
1.  The client should only send the `productId`.
2.  The server should look up the price of that `productId` in the database.
3.  Use the database price for the transaction logic.
</details>

---

### 6. Business Logic Flaw (Negative Amount)
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali` (Around Line 109)
**Context:** `/purchase` logic checking balance.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Validate all numbers.
1.  Add a simple check: `if (price < 0) { return error; }`.
2.  This prevents math tricks where subtracting a negative number actually adds money.
</details>

---

### 7. Client-Side Trust Issues
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali`
**Context:** Trusting `price` and `userId` from client requests.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Assume all data from the client is malicious.
1.  Never use client-supplied data for critical logic (pricing, user identity).
2.  Always validate and sanitize inputs on the server/backend before processing.
</details>

---

### 8. Intent Tampering (Exported Activities)
**Location:** `app_src/AndroidManifest.xml` (Tags for `ProductActivity`, etc.)
**Context:** `android:exported="true"` attribute.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Don't let other apps open your internal screens.
1.  Change `android:exported="true"` to `android:exported="false"` for any activity that shouldn't be launched from the home screen or other apps.
2.  If it *must* be exported, add `android:permission` checks to restrict who can open it.
3.  In the Activity code (`onCreate`), check if the necessary data (like `userId`) is present and valid; if not, close the activity (`finish()`).
</details>

---

### 9. Missing Authorization Checks
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali`
**Context:** Endpoints like `/dashboard` and `/purchase` missing role checks.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Verify permissions for every request.
1.  Implement a middleware or check at the start of every function.
2.  Ensure the current session user has the required Role (e.g., "admin") to perform the requested action.
</details>

---

### 10. Insecure Local Database Exposure
**Location:** `app_src/smali/com/horoqih/app/DatabaseHelper.smali`
**Context:** Standard SQLite database usage.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Encrypt local data.
1.  Use **SQLCipher** or **EncryptedSharedPreferences** instead of standard SQLite/SharedPreferences.
2.  Ensure the encryption key is generated securely (e.g., via Android Keystore) and not hardcoded.
</details>

---

### 11. Sensitive Data Logging
**Location:** `app_src/smali/com/horoqih/app/LoginActivity.smali`, `DashboardActivity.smali`
**Context:** `Log.d()` calls.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Don't help hackers debug your app.
1.  Delete calls to `Log.d`, `Log.i`, or `Log.e` that contain user data, tokens, or internal logic flow.
2.  Configure your build tool (ProGuard/R8) to automatically strip out all logging calls in the "Release" build.
</details>

---

### 12. No Root Detection / Anti-Tampering
**Location:** Application Configuration
**Context:** Missing security libraries.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Detect and react to insecure environments.
1.  Integrate libraries like **RootBeer** or **Google Play Integrity API**.
2.  Check for root access, emulator usage, or hooking frameworks (Frida) at startup.
3.  If detected, warn the user or restrict app functionality.
</details>

---

### 13. Lack of SSL Pinning
**Location:** `app_src/smali/com/horoqih/app/SSLClient.smali`
**Context:** `CertificatePinner` setup.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Trust only your specific server certificate.
1.  Don't use dummy hashes (like `sha256/AAAA...`).
2.  Get the real SHA-256 hash of your server's public key.
3.  Hardcode that real hash into the `CertificatePinner` builder.
4.  If the connection certificate doesn't match the hardcoded one, the app will refuse to connect (blocking proxy tools).
</details>

---

### 14. Missing Replay Protection
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali`
**Context:** Stateless API endpoints.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Ensure requests can only be used once.
1.  Include a **Nonce** (unique random number) and **Timestamp** in every request.
2.  The server should verify the signature and ensure the timestamp is recent and the nonce hasn't been used before.
</details>

---

### 15. No Rate Limiting
**Location:** `app_src/smali/com/horoqih/app/LocalHttpServer.smali` (Line 16 - `/login`)
**Context:** Login logic loop.

<details>
<summary><b>Click to see how to fix</b></summary>

**The Fix:**
Slow down attackers.
1.  Add a tracking mechanism (e.g., in a static Map or Database).
2.  Count how many failed login attempts have happened for a specific IP or Username in the last 15 minutes.
3.  If it exceeds a limit (e.g., 5 tries), reject the request immediately with a "429 Too Many Requests" error.
</details>