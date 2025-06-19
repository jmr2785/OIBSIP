Task 2: Basic Firewall Configuration with UFW

Objective

The goal of this task is to configure a basic firewall using **UFW (Uncomplicated Firewall)** on a Linux system (preferably Ubuntu). This setup will improve system security by explicitly allowing or denying network traffic based on port-level rules.

---

Tools and Technologies Used

- **UFW (Uncomplicated Firewall)**: A front-end for iptables, designed to make managing a Netfilter firewall easier.
- **Ubuntu/Linux Terminal**: For executing commands.
- **Bash Script**: Automates firewall rule configuration.
- **Git & GitHub**: For version control and submission.

---

Configuration Goals

-  Allow **SSH (port 22)** connections so remote access is not blocked.
-  Deny **HTTP (port 80)** traffic to prevent web service access.
-  Enable UFW with verbose output to verify that rules are active and correct.

---

Step-by-Step Procedure

1. Update System & Install UFW

sudo apt update
sudo apt install ufw -y
2. Allow SSH (port 22)

sudo ufw allow ssh
sudo ufw allow 22

3. Deny HTTP (port 80)

sudo ufw deny http
sudo ufw deny 80

4. Enable UFW

sudo ufw enable

5. Check Firewall Status

sudo ufw status verbose

Example Output:

Status: active

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW       Anywhere
80/tcp                     DENY        Anywhere
22/tcp (v6)                ALLOW       Anywhere (v6)
80/tcp (v6)                DENY        Anywhere (v6)
