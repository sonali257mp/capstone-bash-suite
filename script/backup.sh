#!/bin/bash
# Automated Backup Script

backup_src="/mnt/e/test file"
backup_dest="/mnt/e/Assignment5/backups/backup_$(date +%F_%T)"
log_file="$HOME/backup_log.txt"

mkdir -p "$backup_dest"
echo "Starting backup at $(date)" >> "$log_file"

if cp -r "$backup_src"/* "$backup_dest"/; then
    echo "Backup successful at $(date)" >> "$log_file"
    echo "Backup completed successfully. Files saved in $backup_dest"
else
    echo "Backup failed at $(date)" >> "$log_file"
    echo "Backup failed!"
fi

