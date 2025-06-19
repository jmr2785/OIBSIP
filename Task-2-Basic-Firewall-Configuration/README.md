# Task 2: Basic Firewall Configuration with UFW

## Objective

The goal of this task is to configure a basic firewall using UFW (Uncomplicated Firewall) on a Linux system (preferably Ubuntu). This setup improves system security by explicitly allowing or denying network traffic based on port-level rules.

---

## Tools and Technologies Used

- UFW (Uncomplicated Firewall): A front-end for iptables, designed to make managing a Netfilter firewall easier.
- Ubuntu/Linux Terminal: For executing commands.
- Bash Script: Automates firewall rule configuration.
- Git & GitHub: For version control and submission.

---

## Configuration Goals

- Allow SSH (port 22) connections so remote access is not blocked.
- Deny HTTP (port 80) traffic to prevent web service access.
- Enable UFW and verify that rules are active and correct.

---

## Step-by-Step Procedure

### 1. Update System and Install UFW
```bash
sudo apt update
sudo apt install ufw -y
```
2. Allow SSH (port 22)
```bash
sudo ufw allow ssh
# or
sudo ufw allow 22
```
3. Deny HTTP (port 80)
```bash
sudo ufw deny http
# or
sudo ufw deny 80
```
4. Enable UFW
```bash
sudo ufw enable
```
5. Check Firewall Status
```bash
sudo ufw status verbose
```
Example Output
```bash
Status: active

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW       Anywhere
80/tcp                     DENY        Anywhere
22/tcp (v6)                ALLOW       Anywhere (v6)
80/tcp (v6)                DENY        Anywhere (v6)
```
File Descriptions
| File Name              | Description                                                         |
| ---------------------- | ------------------------------------------------------------------- |
| `ufw_configuration.sh` | Script that installs UFW, sets rules, enables it, and prints status |
| `README.md`            | This file. Describes objective, steps, results, and deliverables    |
| `screenshot.png`       | Screenshot showing the UFW status with active rules                 |

   
