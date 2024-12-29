# Basic Log Analyzer

This is a basic log analyzer script designed to simulate the analysis of server log files for potential malicious activity. It focuses on identifying failed login attempts and allows you to research suspicious IPs further.

## Requirements:

- Bash shell

## Files:

- ```log_analyzer.sh```: The script that analyzes the log file.
- ```log.txt```: A sample log file (replace with your actual log file).

## How to Use:

1. Save the script as 
- ```log_analyzer.sh```.
2. Make the script executable: 
- ```chmod +x log_analyzer.sh```
3. Run the script:
- ```./log_analyzer.sh```

## Functionality:

1. Analyzes the ```log.txt``` file for lines containing "401 Unauthorized" (indicating failed login attempts).
2. Identifies IPs with a high number of failed login attempts (configurable threshold).
3. Presents a menu of options:
- Ban IP (simulation)
- Block IP temporarily (simulation)
- Research further
- Ignore
4. If "Research further" is selected, displays all activity for the specified IP.
5. After researching an IP, provides additional options:
- Ban IP (simulation)
- Block IP temporarily (simulation)
- Ignore

## Note:

- This is a simulation and does not implement actual banning or blocking functionalities. You would need to add the necessary logic based on your system's configuration.
- The script uses a basic threshold for detecting suspicious activity. You may need to adjust this threshold based on your specific needs and security requirements.
