#!/bin/bash

# Define source and target directories
#source directory is taken from command line argument(first arg)
src_dir="$1"
target_dir="/home/ubuntu/backups"

# Ensure the target directory exists
mkdir -p "$target_dir"

# Generate a timestamp for the backup file
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create a zip backup
backup_file="${target_dir}/backup_${timestamp}.zip"
zip -r "$backup_file" "$src_dir" > /dev/null
# Print success message
echo "Backup created: $backup_file"

# Keep only the last 5 backups and delete older ones
cd "$target_dir" || exit
ls -t backup_*.zip | tail -n +4 | xargs rm -f

echo "Old backups removed. Only the latest 3 are retained."


: '
got to crontab
crontab -e
i
* * * * * /bin/bash /path_to/backup_with_rotation.sh >> /path_to_backup_folder 2>&1

'
