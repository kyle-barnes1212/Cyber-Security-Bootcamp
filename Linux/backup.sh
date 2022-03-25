 #! /bin/bash

tar cvf /var/backup/home.tar /home

mv /var/backup/home.tar /var/backup/home.01234567.tar

#Creates a gzip-compressed archive of '/home' and saves it to 
tar cvzf /var/backup/system.tar.gz /home

# makes a list of backup files, and saves the list to a file report in /var/backup
ls -lh /var/backup >> /var/backup/file_report.txt

# adds information about used and unused memory usage and swap memory of the system and adds to the file report
free -h >> /var/backup/file_report.txt 
