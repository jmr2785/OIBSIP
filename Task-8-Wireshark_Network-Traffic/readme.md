# Task 8: Capture Network Traffic with Wireshark

## Objective
Capture and analyze network traffic using Wireshark, focusing on HTTP protocol.

## Tools Used
- Wireshark (Network protocol analyzer)

## Steps Performed

### 1. Install Wireshark
Wireshark was installed using the following command:
```bash
sudo apt update
sudo apt install wireshark
```
2. Start Packet Capture
Wireshark was opened and the active network interface (e.g., eth0 or wlan0) was selected.

Packet capturing was started.

3. Generate HTTP Traffic
Accessed http://localhost/bWAPP to simulate HTTP traffic.

Interacted with various web pages to produce GET and POST requests.

4. Filter HTTP Packets
Applied the following filter to isolate HTTP packets:

```
http
```
5. Analyze Captured Packets
Observed HTTP request methods like GET and POST.

Inspected HTTP headers, URLs, and user-agent strings.

Noted unencrypted credentials and session tokens due to use of HTTP.

6. Save the Capture
The filtered capture was saved as wireshark_capture.pcap.

Key Findings
HTTP traffic is not encrypted, making it easy to view sensitive information like usernames and passwords.

Detailed packet-level information can be observed such as request methods, response codes, and content types.

Demonstrates the importance of using HTTPS for secure communication.
