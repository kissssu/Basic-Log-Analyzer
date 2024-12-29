#!/bin/bash

# Basic log analyzer for failed login attempts and potential malicious activity

# Define log file path
logfile="sample-log.txt" 

# Function to analyze log file
analyze_log() {
  echo "Analyzing log file..."
  sleep 1

  # Extract failed login attempts and store IPs in an array
  declare -a malicious_ips
  grep " 401 Unauthorized" "$logfile" | awk '{print $4}' | sort | uniq -c | sort -n | while read count ip; do
    if [ "$count" -gt 10 ]; then  # Adjust threshold as needed
      echo "$ip: $count failed login attempts"
      malicious_ips+=("$ip") 
    fi
  done

  if [[ ${#malicious_ips[@]} -ne 0 ]]; then
    echo "No potentially malicious IPs detected."
  else
    echo ""
    echo "Detected potentially malicious IPs:"
    for ip in "${malicious_ips[@]}"; do
      echo "$ip"
    done
    echo ""

    echo "Do you want to take action against any of these IPs?"
    echo "1. Ban IP"
    echo "2. Block IP temporarily"
    echo "3. Research further"
    echo "4. Ignore"
    read -p "Enter your choice: " choice

    case "$choice" in
      1)
        echo "Enter IP to ban:"
        read ip_to_ban
        echo "IP $ip_to_ban banned. (This is a simulation.)"
        ;;
      2)
        echo "Enter IP to block temporarily:"
        read ip_to_block
        echo "IP $ip_to_block blocked temporarily. (This is a simulation.)"
        ;;
      3)
        echo "Enter IP to research:"
        read ip_to_research
        echo "All activity for IP $ip_to_research:"
        grep "$ip_to_research" "$logfile" 

        echo ""
        echo "What do you want to do next?"
        echo "1. Ban IP"
        echo "2. Block IP temporarily"
        echo "3. Ignore"
        read -p "Enter your choice: " research_choice
        case "$research_choice" in
          1)
            echo "IP $ip_to_research banned. (This is a simulation.)"
            ;;
          2)
            echo "IP $ip_to_research blocked temporarily. (This is a simulation.)"
            ;;
          3)
            echo "Ignoring."
            ;;
          *)
            echo "Invalid choice."
            ;;
        esac
        ;;
      4)
        echo "Ignoring."
        ;;
      *)
        echo "Invalid choice."
        ;;
    esac
  fi
}

# Run the analysis
analyze_log