# Horoqih CTF: Walkthrough & Engineering Guide

This document details the journey of analyzing the Horoqih application, identifying its vulnerabilities, and the engineering process used to transform it into a self-contained CTF challenge.

---

## Part 1: Vulnerability Discovery Walkthrough

This section simulates the perspective of a security researcher analyzing the original APK.

### **Initial Reconnaissance**
1.  **Decompilation:**
    We started by decompiling the APK to inspect its resources and code.
    ```bash
    apktool d horoqih.apk -o app_src
    ```
2.  **Manifest Analysis (`AndroidManifest.xml`):**
    *   **Finding:** We noticed `android:exported="true"` on sensitive activities like `ProductActivity` and `DashboardActivity`.
    *   **Implication:** These screens can be launched directly by other apps or ADB, bypassing login (Intent Tampering).
    *   **Finding:** `android:allowBackup="true"` was present.
    *   **Implication:** Attackers can use `adb backup` to steal app data (Insecure Backup).

### **Static Analysis (Code Review)**

#### **1. Authentication & Database**
*   **File:** `smali/com/horoqih/app/DatabaseHelper.smali`
*   **Discovery:** We found raw SQL strings inserting users:
    ```sql
    INSERT INTO users VALUES (3,'admin','admin123','admin',100000)
    ```
*   **Vulnerability:** **Hardcoded Credentials**.
*   **Discovery:** The password field is `TEXT`. No hashing functions (like SHA-256 or BCrypt) are used before insertion.
*   **Vulnerability:** **Plaintext Password Storage**.

#### **2. Local HTTP Server**
*   **File:** `smali/com/horoqih/app/LocalHttpServer.smali`
*   **Context:** This class handles internal API requests.
*   **Discovery (Login):**
    ```java
    "SELECT ... WHERE username='" + user + "' AND password='" + pass + "'"
    ```
    *   **Vulnerability:** **SQL Injection**. We can bypass login with `admin' --`.
*   **Discovery (Dashboard):**
    *   The endpoint `/dashboard` takes a `userId` parameter and directly queries the DB without checking the session.
    *   **Vulnerability:** **IDOR**. We can change `userId=1` to view other profiles.
*   **Discovery (Purchase):**
    *   The `/purchase` endpoint reads `price` from the JSON body sent by the client.
    *   **Vulnerability:** **Price Manipulation**. We can send `{ "price": 1 }`.
    *   It checks `if (balance < price)`, but doesn't check if `price` is negative.
    *   **Vulnerability:** **Negative Amount Exploit**. Sending `{ "price": -1000 }` increases our balance.

#### **3. Network Security**
*   **File:** `smali/com/horoqih/app/SSLClient.smali`
*   **Discovery:** A `CertificatePinner` is set up with a hash starting with `sha256/AAAA...`.
*   **Vulnerability:** **Lack of SSL Pinning**. This is a dummy hash that likely validates nothing or is easily bypassed.
*   **Observation:** The API is HTTP (Cleartext), and requests have no timestamps or nonces.
*   **Vulnerability:** **Missing Replay Protection**.

#### **4. Logging**
*   **File:** `smali/com/horoqih/app/LoginActivity.smali`
*   **Discovery:** Calls to `Log.d` contain username/password variables.
*   **Vulnerability:** **Sensitive Data Logging**.

---

## Part 2: Engineering the CTF (The "Mischief")

To turn this vulnerable app into a gamified challenge **without a backend**, we injected Smali code directly into the APK.

### **1. The Core Engine (`CtfManager`)**
We created a new class `com.horoqih.app.CtfManager` to handle the game state.
*   **Singleton:** Uses `static` fields to persist data in memory during the session.
*   **Scoring:** Tracks `score` (Points) and `solvedFlags` (HashSet).
*   **Thread Safety:** All methods are `synchronized` to prevent crashes from the multi-threaded `NanoHTTPD` server.
*   **Decay System:** Calculates `(CurrentTime - StartTime) / 2 minutes` to subtract points over time.

### **2. Instrumentation (Hooks)**
We injected logic into `LocalHttpServer.smali` to "phone home" when a hack occurs.

*   **SQL Injection Hook:**
    *   **Where:** Inside the `/login` success block.
    *   **Logic:** `if (username.equals("admin")) { CtfManager.addScore(...) }`
*   **IDOR Hook:**
    *   **Where:** Inside `/dashboard`.
    *   **Logic:** `if (requestedId != session.getUserId()) { CtfManager.addScore(...) }`
*   **Intent Tampering Hook:**
    *   **Where:** `ProductActivity.onCreate`.
    *   **Logic:** `if (getIntent().getIntExtra("userId", 0) == 0) { CtfManager.addScore(...) }`

### **3. The "Hacker Quiz" (Passive Flags)**
Since we can't auto-detect if a user is reading code, we built a Quiz UI.
*   **UI:** Created `dialog_quiz.xml` and `QuizDialogFragment.smali`.
*   **Logic:** `QuizManager.smali` handles a **Queue** (Q1 -> Q2...) and **Timers** (10m cooldown, 1hr penalty).
*   **Integration:** In `DashboardActivity.onResume`, the app checks `QuizManager.shouldShowQuiz()` and pops up the dialog if ready.

### **4. UI Updates**
*   **File:** `res/layout/activity_dashboard.xml`
*   **Change:** Added a `TextView` ID `txtCtfScore`.
*   **File:** `DashboardActivity.smali`
*   **Change:** Injected `updateCtfScore()` to display "Score: 1250 | Flags: 3/15".

---

## Part 3: Hacker Quiz - Questions & Answers

These questions appear in the app to test your knowledge of the passive vulnerabilities.

**Q1: What is the biggest risk of storing user passwords without hashing?**
*   **Answer:** **Data leak reveals all credentials**
*   **Explanation:** Hashing turns passwords into irreversible strings. If stored in plain text, a database breach exposes every user's actual password instantly.

**Q2: Why would an attacker use a tool like Burp Suite or Charles Proxy?**
*   **Answer:** **To intercept and modify network traffic**
*   **Explanation:** These tools sit between the app and the server (Man-in-the-Middle), allowing attackers to read cleartext traffic, modify requests (like Price Manipulation), and analyze API structure.

**Q3: Why is it dangerous for an app to print sensitive info to system logs (Logcat)?**
*   **Answer:** **Other apps or ADB can read the logs**
*   **Explanation:** On older Android versions or devices with USB debugging enabled, logs are easily accessible. Leaking tokens or passwords here bypasses app sandboxing.

**Q4: If a device is rooted, what happens to the local app database file?**
*   **Answer:** **It can be accessed and stolen by anyone**
*   **Explanation:** Root access breaks the Android Sandbox. A user (or malicious root app) can simply copy `/data/data/com.horoqih.app/databases/horoqih.db` and open it.

**Q5: What is the primary purpose of Root Detection in a secure app?**
*   **Answer:** **To prevent running in an insecure environment**
*   **Explanation:** Rooting compromises the device's security model. High-security apps (banking) detect this to prevent data theft or tampering.

**Q6: How can a 'Replay Attack' be prevented in network requests?**
*   **Answer:** **Using unique nonces or timestamps**
*   **Explanation:** A nonce is a "number used once." If the server tracks used nonces, an attacker cannot simply re-send a captured "Buy Product" request to buy it again.

**Q7: Why is 'android:allowBackup=true' considered a security risk?**
*   **Answer:** **User data can be extracted via ADB backup**
*   **Explanation:** This flag allows anyone with physical access and ADB to create a full backup of the app's private data container, extracting databases and prefs without root.

**Q8: In a secure app, where should price and balance validation occur?**
*   **Answer:** **On the Server-side (Backend)**
*   **Explanation:** The client (app) is in the hands of the attacker and cannot be trusted. The server must always verify that the item price matches the database and the user has enough funds.

---

## Part 4: How to Build & Play

1.  **Rebuild the APK:**
    ```bash
    apktool b app_src -o horoqih-ctf.apk
    ```
2.  **Sign the APK:**
    ```bash
    java -jar uber-apk-signer.jar --apks horoqih-ctf.apk
    ```
3.  **Install & Hack:**
    Install on a device/emulator and start finding the 15 flags!<br>
<div style="text-align:center;">
    <strong>Sorry, reverse engineering the ctf apk is NOT allowed lol</strong>
</div>

