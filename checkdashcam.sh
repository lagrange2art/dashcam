var=$(systemctl is-active dashcam.service)


if [ "$var" = "active" ]
then
    echo 'it is running'
else
    echo 'not running'
fi
