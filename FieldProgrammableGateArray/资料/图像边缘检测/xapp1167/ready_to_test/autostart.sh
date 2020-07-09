#!/bin/sh

# Program EDID if ADV7611 subdev node exists
DEVNAME=$(media-ctl -e "adv7611 12-004c")
if [ -c $DEVNAME ] 2> /dev/null
then
    echo "Programming EDID into ADV7611..."
    edid $DEVNAME 0 /usr/local/lib/firmware/edid.bin
fi

# Set Qt fonts path and start Qt application
export QT_QWS_FONTDIR=/usr/lib/fonts
export PATH=$PATH:/media/card/bin

cp /media/card/input_video /home/root

# Print info
echo "***** To run the application, type: run_video.sh -cmd"
