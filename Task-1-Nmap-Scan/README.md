# Task 1: Basic Network Scanning with Nmap

## Objective
The purpose of this task is to perform a basic network scan using Nmap to identify open ports and running services on the local machine (`127.0.0.1`).

## Scan Details
- **Command Used:** `nmap -sV 127.0.0.1`
- **Nmap Version:** 7.97
- **Scan Time:** 2025-06-15 22:20 +0530

## Results Summary

| Port  | State | Service | Version / Notes                        |
|-------|-------|---------|----------------------------------------|
| 5000  | open  | rtsp    | Identified as `AirTunes/845.5.1`, Apple media service |
| 7000  | open  | rtsp    | Same as above, likely another RTSP instance |

### Observations:
- **Host Status:** Up and responsive (0.000034s latency).
- **Closed Ports:** 998 closed TCP ports.
- **Open Ports:** 5000 and 7000.
- **RTSP Services:** These ports are likely used by Apple's AirPlay/AirTunes services.
- **Unrecognized Services:** Though detected as RTSP, Nmap couldn't identify the exact service version. Nmap provides a fingerprint to manually submit the unknown services for future identification.

## Significance of Open Ports
- **Port 5000 / 7000 (RTSP):**
  - RTSP (Real-Time Streaming Protocol) is used for streaming media. On macOS, these ports are commonly associated with AirPlay (AirTunes).
  - The service is running but responding with a `403 Forbidden` error, which means it is rejecting unauthenticated or unauthorized access attempts.

## Conclusion
The Nmap scan effectively identified two open ports running Apple's media streaming services. Although the exact service versions were not fully recognized, the scan provides enough data to understand what is running on the system and which ports are open.

## Files Included
- `nmap_scan_results.txt`: Raw output from the terminal scan
- `README.md`: Explanation of the scan and analysis

