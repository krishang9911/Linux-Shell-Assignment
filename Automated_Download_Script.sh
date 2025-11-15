#!/bin/bash
# Script Name: download.sh
# Purpose: Downloads a file from the internet and stores it in a predefined directory.
# Author: Krishang Mahajan
# Date: 13-Nov-2025

DOWNLOAD_DIR="$HOME/Downloads_Auto"
FILE_URL="https://example.com/sample.pdf"

mkdir -p "$DOWNLOAD_DIR"

curl -o "$DOWNLOAD_DIR/downloaded_file.pdf" "$FILE_URL"

echo "Download completed. File saved to: $DOWNLOAD_DIR"
