#!/bin/bash
set -euo pipefail
BACKUP_DIR=~/backups
if [ $# -eq 0 ]; then
	echo "USAGE: safe_backup.sh <file>"
	exit 1
fi
SOURCE=$1
if [ ! -f "$SOURCE" ]; then
	echo "Error: $SOURCE does not exist or is not a file"
	exit 1
fi
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BASENAME=$(basename "$SOURCE")
DEST="$BACKUP_DIR/${BASENAME}_${TIMESTAMP}"
cp "$SOURCE" "$DEST"
echo "Backed up: $SOURCE -> $DEST"
