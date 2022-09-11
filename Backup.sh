#!/bin/bash
####################################
#
# Backup to tmp folder script.
#
####################################

# The Path of the folder to backup. 
backup_files="/home/"

# Backup Destination path.
dest="/tmp"

# Create archive filename.
day=$(date +%Y-%m-%d)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar extension.
tar czf $dest/$archive_file $backup_files

# Print the end status message
echo -e "Backup finished! \nScript end time:  `date`"


# Long listing of files in $dest to check file sizes.
ls -lh $dest





