#!/bin/zsh

# Define the directories you want to backup
backup_dirs=(
  "$HOME/Documents"
  "$HOME/Dev"
  "$HOME/Edu"
  "$HOME/.config"
)

# Define the backup destination directory
backup_dest="/path/to/backup/directory"

# Define the backup filename
backup_file="$backup_dest/backup-$(date +%Y-%m-%d-%H%M%S).tar.gz"

# Create the backup file
tar -czvf $backup_file ${backup_dirs[@]}

# Optional: Remove backups older than 30 days
find $backup_dest -name "backup-*" -type f -mtime +30 -delete
