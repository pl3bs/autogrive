# autogrive
weekly compress and transfer full backup to google drive automagically


 - copy/paste following line into shell and execute
 

curl -s https://raw.githubusercontent.com/pl3bs/autogrive/master/setup.sh | sh

## restore

I'm sure there's a more clever way, but I just downloaded the archive from google drive to my local machine, and used filezilla to push it back to my kimsufi rig. 

I just tested this, fresh installed (freaked me out!) my production rig, it was out for a half hour but fully operational after extract. 

Once you have the archive in your root directory ( / )

**CAUTION** 

Verify you are in the root directory and see the tar file

cd / && ls

tar -xvpjf backup.tar.bz2 --numeric-owner

replacing backup with your file's date

**NOTICE**

This will put weekly backups on your local/remote, as grive sync's the directory. I suggest cleaning out both directories at the same time once a season or as needed. 

**TIP**
If you would like to store a fixed number if backups then uncomment the line containing: ls -A1t | tail -n +9 & MAKE SURE that no other files are stored on your drive. If other files are stored you will be not only storing less backups, but potentially removing these files when the script next executes. I use this line to store 5 copies locally and remotely. No other files are used in the drive. 
