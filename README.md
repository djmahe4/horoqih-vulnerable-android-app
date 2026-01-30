<p align="center">
  <img src="images/logo.png" width="180">
</p>

<h1 align="center">Horoqih</h1>

<p align="center">
  Vulnerable Android Application for Security Research
</p>

---

## Developer

Farish 
Security Researcher

## Overview

Horoqih is an intentionally vulnerable Android application developed by **Farish**, a security researcher.

The project is built to resemble a real world Android application rather than a simplified lab or CTF style environment.  
Its primary focus is on **business logic vulnerabilities**, insecure trust models, and authorization flaws that are commonly observed during real mobile application security assessments.

The application follows realistic workflows such as authentication, product purchase, balance handling, and account management, allowing testers to practice exploitation in scenarios similar to production systems.

---

## Objectives

- Provide a realistic Android penetration testing environment  
- Demonstrate common business logic and authorization flaws  
- Simulate insecure developer design decisions  
- Enable hands on learning through real application behavior  

---

## Application Screenshots

<p align="center">
  <img src="images/splash.png" width="250">
  <img src="images/login.png" width="250">
  <img src="images/dashboard.png" width="250">
</p>

---

## Vulnerabilities Included

The application intentionally contains the following vulnerabilities:

- SQL Injection (Authentication Bypass)
- Hardcoded Credentials
- Plaintext Password Storage
- Insecure Direct Object Reference (IDOR)
- Price Manipulation Vulnerability
- Business Logic Flaw (Negative Amount Exploit)
- Client-Side Trust Issues
- Intent Tampering
- Missing Authorization Checks
- Insecure Local Database Exposure
- Sensitive Data Logging
- No Root Detection / Anti-Tampering Controls
- Lack of SSL Pinning
- Missing Replay Protection
- No Rate Limiting / Brute-Force Protection

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/horoqih.git
