cp .dashcam.service.backup dashcam.service

cp .removeold.sh.backup removeold.sh


systemctl stop dashcam
systemctl disable dashcam
rm /etc/systemd/system/dashcam.service
#rm /etc/systemd/system/[servicename] # and symlinks that might be related
#rm /usr/lib/systemd/system/dashcam
#rm /usr/lib/systemd/system/dashcam # and symlinks that might be related
systemctl daemon-reload
systemctl reset-failed

