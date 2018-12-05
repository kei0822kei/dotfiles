#!/usr/bin/zsh

################################################################################
# backup to $HOME/Backup directory
################################################################################

### 1 : The directory you want to back up.

BACKUP_DIR="$HOME/Backup/$1"
mkdir -p "$BACKUP_DIR"
DATE=`date +"%Y%m%d%I%M"`
tar -zcvf "${BACKUP_DIR}/${1}_${DATE}.tar.gz" "$1"
