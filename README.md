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

## Example:

```
Analyzing log file...
10.0.0.2: 13 failed login attempts

Detected potentially malicious IPs:

Do you want to take action against any of these IPs?
1. Ban IP
2. Block IP temporarily
3. Research further
4. Ignore
Enter your choice: 3
Enter IP to research:
10.0.0.2
All activity for IP 10.0.0.2:
2024-12-28 07:48:12 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized
2024-12-28 07:48:15 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized
2024-12-28 07:48:12 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized
2024-12-28 07:48:13 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:15 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:16 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:17 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:18 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:19 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:20 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:21 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:22 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 
2024-12-28 07:48:23 | 10.0.0.2      | 80 | HTTP   | POST /login             | 401 Unauthorized 

What do you want to do next?
1. Ban IP
2. Block IP temporarily
3. Ignore
Enter your choice: 1
IP 10.0.0.2 banned. (This is a simulation.)
```
