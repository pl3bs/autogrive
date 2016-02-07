cd /
date=$(date -I)

#create backup of system

tar -cvpf "$date".tar.bz2 --exclude=/"$date".tar.bz2 --exclude=/root/backup --one-file-system --use-compress-prog=pbzip2 /

# move backup and sync to drive

mv "$date".tar.bz2 /root/backup

cd /root/backup

grive sync
