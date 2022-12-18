read -p 'Path for dashcam [./]: ' path
path=${path:-$( pwd )"/"}
#echo $path

read -p "Length of videos in sec [300]: " length
length=${length:-300}

read -p "number of videos to keep [50]: " numvids
numvids=${numvids:-50}


cp dashcam.service .dashcam.service.backup
sed -i "s+INPUTPATH/+$path+g" dashcam.service
sed -i "s+LENGTH+$length+g" dashcam.service

cp removeold.sh .removeold.sh.backup
sed -i "s+NUMVIDS+$numvids+g" removeold.sh

chmod +x startdashcam.sh; chmod +x stopdashcam.sh; chmod +x dashcam.sh; chmod +x removeold.sh; chmod +x checkdashcam.sh
cp dashcam.service /etc/systemd/system/
sudo systemctl enable dashcam
sudo systemctl daemon-reload
