cd /
date=$(date -I)

#create backup of system

tar -cvpjf "$date".tar.bz2 --exclude=/"$date".tar.bz2 --one-file-system /

# move backup and sync to drive

mv "$date".tar.bz2 /root/backup

cd /root/backup

grive sync --exclude tar.bz2

# remove local backup post-sync

rm "$date"*
