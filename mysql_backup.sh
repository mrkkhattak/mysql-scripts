#!/bin/sh
echo "Starting the script";
HOST=localhost
USER=root;
PASSWD='PASSWORD';
DBNAME='DB' 

# create directory if it doesn't exist
OLDBACKUP=/home/backup_dbs/sql_backup
if [ ! -d "$OLDBACKUP" ]; then
    # create direcotry
    mkdir /home/backup_dbs/sql_backup
fi

# sql file name 
sqlFileName=db-snapshot-`date -I`.sql;

# take db backups
mysqldump -u $USER -p$PASSWD -n -c $DBNAME >  $sqlFileName;

# move to previous  
mv $sqlFileName $OLDBACKUP

# show success message
echo "You have successfully taken backup of your db and moved that to old backup.";