
# Task 3: SQL Injection on DVWA (Low Security)

## Objective
To demonstrate a successful SQL Injection attack on a vulnerable web application using DVWA (Damn Vulnerable Web Application) with the security level set to **Low**.

## Tools Used
- DVWA (Damn Vulnerable Web Application)
- Apache / MySQL / PHP (XAMPP or LAMP stack)
- Web Browser (Firefox/Chrome)
- Burp Suite (Optional)
- Kali Linux or Ubuntu with DVWA installed

## Steps Performed

### 1. DVWA Installation and Setup
- Install XAMPP or LAMP stack on your local machine or VM.
- Download DVWA from GitHub: https://github.com/digininja/DVWA
- Place the DVWA folder inside the web server directory (`htdocs` for XAMPP).
- Start Apache and MySQL services.
- Configure the database by accessing `http://localhost/dvwa/setup.php` and clicking *Create / Reset Database*.
- Login with default credentials:  
  - **Username**: admin  
  - **Password**: password

### 2. Set DVWA Security Level to Low
- Go to `DVWA Security` tab.
- Set the security level to **Low**.
- Save the settings.

# SQL Injection Demonstration on DVWA (Low Security)

![DVWA Logo](https://www.dvwa.co.uk/images/dvwa_logo.png)

This guide demonstrates how to perform SQL injection on DVWA (Damn Vulnerable Web Application) with low security settings.

## Prerequisites

- Linux system (Kali Linux recommended)
- LAMP stack (Apache, MySQL, PHP)
- Git
- Web browser

## Installation

### 1. Install Required Packages
```bash
sudo apt update && sudo apt install -y apache2 mysql-server php php-mysqli php-gd libapache2-mod-php git

### 3. Perform SQL Injection
- Go to `SQL Injection` section in DVWA.
- Enter the following payload in the User ID input box:

  ```sql
  1' OR '1'='1 --
