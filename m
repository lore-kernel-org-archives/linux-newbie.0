From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: My first bash script.
Date: Sat, 01 Jan 2005 22:55:00 +0000
Message-ID: <41D72A44.6090301@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I wrote my first bash script the other day to automatically rip my CDs 
to 128k mp3s.  I was wondering if anyone had any idea or suggestions for 
the script to improve or streamline it.  Thanks in advance. Here it is:

#!/bin/bash
#
# The purpose of this script is to automatically rip CD's to wav format,
# ask for artist name, and track titles and then encoding them into mp3's
# with the following naming conventions:
#
# Track# - Artist - Track title.mp3
# eg. 01 - Metallica - Blackened.mp3 or 02 - Metallica - ...And Justice 
For All.mp3


# make a temp directory, and copy tracks off of /dev/cdrom into temp 
folder using
# cdparanoia

STARTING_DIR=`pwd`

if [ -d $HOME/TEMPRIPPER ]; then
    cd $HOME/TEMPRIPPER
else
    mkdir $HOME/TEMPRIPPER &
    cd $HOME/TEMPRIPPER
fi

cdparanoia -B

# Ask user for artist name, then titles for provided track number, then 
encodes
# the correct track number into an mp3 using the naming conventions 
found in
# the header.

TRACKNUM=01
clear

echo -n "Who is the artist? "
read ARTIST

while [ -a track${TRACKNUM}.cdda.wav ]
do
    if [ -a $HOME/TEMPRIPPER/track${TRACKNUM}.cdda.wav ]; then
        echo -n "What is the title of track $TRACKNUM? "
        read TITLE       
        lame -h $HOME/TEMPRIPPER/track${TRACKNUM}.cdda.wav 
$STARTING_DIR/"$TRACKNUM - $ARTIST - $TITLE.mp3"
        TRACKNUM=`expr $TRACKNUM + 1`
        if test $TRACKNUM -lt "10"; then
            case $TRACKNUM in
                2) TRACKNUM=02;;
                3) TRACKNUM=03;;
                4) TRACKNUM=04;;
                5) TRACKNUM=05;;
                6) TRACKNUM=06;;
                7) TRACKNUM=07;;
                8) TRACKNUM=08;;
                9) TRACKNUM=09;;
            esac
        fi
    fi
done

cd $STARTING_DIR
rm -rf $HOME/TEMPRIPPER

exit 0

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
