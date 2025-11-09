#!/bin/bash
# Maintenance Suite Menu

# --- Error Handling & Logging ---
set -e
trap 'echo " Error occurred at line $LINENO. Check maintenance_log.txt for details." | tee -a maintenance_log.txt' ERR
exec > >(tee -a maintenance_log.txt) 2>&1
echo "=== Maintenance Session Started at $(date) ==="

while true; do
    echo "============================"
    echo "   System Maintenance Menu"
    echo "============================"
    echo "1. Run Backup"
    echo "2. Update & Clean System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_clean.sh ;;
        3) ./log_monitor.sh ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Try again!" ;;
    esac
    echo
done

