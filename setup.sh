echo "2 2 * * 1       root    cd ~/ && ./backup.sh" >> /etc/crontab
yes | add-apt-repository ppa:nilarimogard/webupd8
apt-get update -y
apt-get install grive -y
mkdir /root/backup
cd /root/backup
grive -a

wget blah
./blah

