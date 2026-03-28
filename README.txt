# Open Source Audit - Python

**Student Name:** Riya Mathur
**Registration Number:** [Enter Your Registration Number Here]
**Chosen Software:** Python

## Project Overview
This repository contains five shell scripts written for the Open Source Software course capstone project. These scripts demonstrate practical Linux system administration, package management, and file auditing skills.

## Scripts Description
* **Script 1 (System Identity Report):** Fetches and displays core Linux system information including the OS distribution, kernel version, and uptime.
* **Script 2 (FOSS Package Inspector):** Checks if Python 3 is installed using `dpkg` and prints its version alongside a brief philosophical note.
* **Script 3 (Disk and Permission Auditor):** Loops through essential system directories (/etc, /var/log, etc.) to report disk usage, permissions, and ownership.
* **Script 4 (Log File Analyzer):** Reads a system log file line by line to count the occurrences of a specified keyword (e.g., "error" or "install") and outputs the last 5 matches.
* **Script 5 (Open Source Manifesto Generator):** An interactive script that takes user input to generate a personalized open-source philosophy statement and saves it to a text file.

## How to Run the Scripts
To run any of these scripts on a Debian/Ubuntu-based Linux system (including WSL), follow these steps:

1. Clone this repository to your local machine or download the `.sh` files.
2. Open your Linux terminal and navigate to the folder containing the scripts.
3. Make the scripts executable by running: `chmod +x script_name.sh` (e.g., `chmod +x script1.sh`).
4. Execute the script by running: `./script_name.sh`
   * *Note for Script 4:* This script requires arguments. Run it like this: `./script4.sh /var/log/dpkg.log "install"`

## Dependencies
* A Linux environment (Ubuntu/Debian recommended)
* Standard GNU coreutils (`awk`, `grep`, `du`, `ls`, `cat`)
* `dpkg` package manager (for Script 2)