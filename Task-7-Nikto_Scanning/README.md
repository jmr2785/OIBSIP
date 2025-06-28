# Vulnerability Scanning with Nikto

##  Objective
The goal of this task is to perform a vulnerability scan on a local web application (`bWAPP`) using **Nikto**, a powerful open-source web server scanner. The scan identifies missing security headers and allowed HTTP methods, helping to improve web application security posture.

---

##  Tools Used

- **Nikto v2.5.0** – A command-line web server scanner.
- **bWAPP** – A deliberately insecure web application for penetration testing practice.
- **Kali Linux** – Operating system used for the scan.

---

##  Scan Setup

###  Pre-Requisites

- `bWAPP` running locally at `http://localhost/bWAPP`
- Apache server active
- Nikto installed using:
  ```bash
  sudo apt install nikto

Scan Findings (Summary from nikto_scan.txt)
Server Information:
Server: Apache/2.4.63 (Debian)

Target IP: 127.0.0.1

Target Hostname: localhost

Target Port: 80

Identified Vulnerabilities:

| Type                        | Details                                                                                                                                            |
| --------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Missing Security Header     | `X-Frame-Options` header is not set. This makes the site vulnerable to clickjacking attacks.                                                       |
| Missing Content-Type Header | `X-Content-Type-Options` header is not set. This could allow the browser to MIME-sniff the content and lead to cross-site scripting (XSS) attacks. |
| Allowed HTTP Methods        | `HEAD`, `GET`, `POST`, and `OPTIONS` methods are allowed. It's best practice to disable unused methods.                                            |
| CGI Directories             | No CGI directories were found. Deeper checks can be performed using the `-C all` option.                                                           |
