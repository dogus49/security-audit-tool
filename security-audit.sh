#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <target_url>"
    exit 1
fi

target_url="$1"

timestamp=$(date +%Y%m%d%H%M%S)
result_dir="scan_results_$timestamp"
mkdir "$result_dir"

# Define the functions for parallel scanning
run_nmap() {
    nmap -A -p- -sC "$target_url" -oA "$result_dir/nmap_scan"
}

run_nikto() {
    nikto -h "$target_url" -output "$result_dir/nikto_scan.txt"
}

run_gobuster() {
    wordlist="/usr/share/wordlists/dirb/common.txt"
    gobuster dir -u "$target_url" -w "$wordlist" -o "$result_dir/gobuster_scan.txt"
}

# Run the scan functions in parallel
run_nmap &
run_nikto &
run_gobuster &

wait

echo "Scan complete. Results saved in $result_dir directory."
