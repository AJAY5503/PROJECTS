#!/bin/bash

src="$HOME/data"
dst="$HOME/backup"
days=7

date="$(date +'%Y-%m-%d_%H-%M-%S')"
backupfile="$dst/back_$date.tar.gz"

mkdir -p "$dst"

# Create backup
tar -czf "$backupfile" "$src"

## Delete old backups
find "$dst" -name "back_*.tar.gz" -type f -mtime +$days -exec rm -f {} \;

