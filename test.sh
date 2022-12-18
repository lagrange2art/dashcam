read -p 'Path for dashcam [/home/pi/Desktop/]: ' path
path=${path:-$( pwd )"/"}
echo $path

