## README: Automated Security Assessment Script

**Purpose:**
The purpose of this script is to automate basic security assessments on a target URL (website or server) and store the results. Its main objectives are as follows:

1. **Scanning Operations:** The script concurrently performs three different security scanning operations:
   - It conducts a port scan using `nmap` to identify open ports and services on the target system.
   - It performs a web application security assessment with `nikto` to detect potential security vulnerabilities.
   - It conducts directory enumeration using `gobuster` to list accessible directories on the target website.

2. **Result Storage:** The scanning results are stored in a directory with a specific date and timestamp. This allows users to access and analyze the results at a later time.

3. **User-Friendly:** The script only requires the user to provide a target URL and automates the scanning process. It provides user-friendly error messages to prevent misuse.

To use this script, follow these steps:

1. Open the script in a text editor and specify the target URL. For example:
   ```bash
   target_url="http://example.com"
   ```

2. Save the script and make it executable:
   ```bash
   chmod +x script.sh
   ```

3. Run the script by providing the target URL as an argument:
   ```bash
   ./script.sh http://example.com
   ```

4. The script initiates parallel scanning operations and saves the results in a directory named "scan_results_<timestamp>". This directory indicates the date and time of the scan.

5. To access the results, you can find the relevant result files in this directory. For instance, Nmap results are stored in a file named `nmap_scan.nmap`, while Nikto and Gobuster results are stored in `nikto_scan.txt` and `gobuster_scan.txt`, respectively.

This script is useful for security professionals or system administrators who want to quickly and automatically perform a security assessment on a target URL. Additionally, the automatic result storage feature allows easy access to past scan results.
