# set to run every monday 2:02AM

echo "2 2 * * 1       root    cd ~/ && ./backup.sh" >> /etc/crontab

# add repo and install grive

yes | add-apt-repository ppa:nilarimogard/webupd8
apt-get update -y
apt-get install grive -y

# setup grive

mkdir /root/backup
cd /root/backup
grive -a

# get backup script and execute initial run

cd ..
wget https://raw.githubusercontent.com/pl3bs/autogrive/master/backup.sh
chmod +x ./backup.sh
./backup.sh
