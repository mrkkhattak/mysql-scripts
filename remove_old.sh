#!/bin/sh
echo "Starting the script";

OLDBACKUP=/home/backup_dbs/sql_backup
if [ -d "$OLDBACKUP" ]; then
    # remove directory if it exists
    echo "Directory exists, so going to remove it";
    rm  $OLDBACKUP -Rf
fi

# show success message
echo "Successfully removed the directory";