# capstone-bash-suite
A modular suite of Bash scripts designed for Linux systems to automate routine maintenance tasks including system backups, updates, cleanup, and log monitoring.

This project is part of Assignment 5 (LinuxOS + LSP).

✅ Features
1. Backup Script
Compresses selected user folders
Stores timestamped .tar.gz backups in backups/
Logs all activity in logs/script_logs.txt
2. System Update & Cleanup Script
Runs:
apt update
apt upgrade
autoremove
autoclean
Helps maintain system integrity
Logs all output
3. Log Monitoring Script
Monitors system logs in real time (/var/log/syslog, /var/log/auth.log)
Detects patterns (configured in log_monitor.conf)
Logs alerts into script_logs.txt
Supports optional email alerts using mail command
4. Maintenance Menu
Interactive menu to run all tools from one place:

Run backup
Perform system update & cleanup
Start live log monitoring
View Script Logs
Exit
