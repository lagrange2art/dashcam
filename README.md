This project uses the RPI camera as a dashcam that can be used in a car. After starting the RPI videos are recorded and stored with a timestamp. The length of the videos and the maximum number of videos are specified on install. 

To setup the dashcam 
1) make install.sh as executable: chmod +x install.sh
2) execute the install script with sudo: sudo ./install.sh
   during installation you have to specify the location for the videos, length of each video and the maximal number of videos. 

To uninstall the dashcam
1) make uninstall.sh executable: chmod +x uninstall.sh
2) run uninstall script: ./uninstall.sh

https://www.linuxjournal.com/content/building-dashcam-raspberry-pi-zero-w

Background:
This project creates and uses a service with systemd. The service will be named "dashcam". The typical commands are 
sudo systemctl enable dashcam   # to create the service
systemctl is-active dashcam.service 
systemctl start dashcam
systemctl stop dashcam

The service (and with that the dashcam) starts automatically after booting the RPI. There are more exectubales that may be used to start and stop the dashcam directly. Also if the RPI camera is working there should be a red led on the camera module. checkdashcam.sh is used to return the running status. removeold.sh is called on each start to remove old videos (not that the storage will run full with thousands of videos). dashcam.sh includes the final call of the RPI cmara module raspivid.

![My Image](images/DALL·E 2022-12-18 23.43.28 - single board computer with camera attached on the dashboard of a car in the background you the traffic.png)

