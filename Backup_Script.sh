#!/bin/bash
# Script Name: backup.sh
# Purpose: Creates a backup of a specified directory with a timestamp.
# Author: Krishang Mahajan
# Date: 13-Nov-2025

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP"

echo "Backup completed: $BACKUP_DIR/backup_$TIMESTAMP"
