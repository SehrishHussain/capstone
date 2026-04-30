#!/bin/bash

# Define variables
BACKUP_DIR="/home/gituser/backups"
# Directory where backups will be stored

SOURCE_DIR="/srv/git"
# Directory containing Git repositories

DATE=$(date +%F)
# Gets current date (YYYY-MM-DD)

BACKUP_FILE="$BACKUP_DIR/git_backup_$DATE.tar.gz"
# Backup file name with date

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create compressed backup
tar -czf $BACKUP_FILE $SOURCE_DIR
# Compresses /srv/git into a tar.gz file

# Print success message
echo "Backup completed: $BACKUP_FILE"
