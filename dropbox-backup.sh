#!/bin/bash

# print date header to log
printf "\n\n\nDROPBOX BACKUP SYNC $(date '+%F')\n$(printf '=%.0s' {1..30})\n" >> /home/delamb/.dropbox-backup.log

# rsync Dropbox directory and log verbose output
rsync -avz /home/delamb/Dropbox /media/delamb/backup >> /home/delamb/.dropbox-backup.log
