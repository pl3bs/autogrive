yes | add-apt-repository ppa:nilarimogard/webupd8
apt-get update -y
apt-get install grive
mkdir /root/backup
cd /root/backup
grive -a
