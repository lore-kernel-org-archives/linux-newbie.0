From: Nathan Clayton <nathanclayton@daftwazzock.com>
Subject: Re: USB Mass Storage Devices
Date: Sun, 26 Oct 2003 01:24:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F9B84BE.4020302@daftwazzock.com>
References: <1067097757.10057.15.camel@Abydos> <bne88l$jap$1@sea.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------040300030807020901040808"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bne88l$jap$1@sea.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

This is a multi-part message in MIME format.
--------------040300030807020901040808
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Pete Shinners wrote:

| Thorsten Alge wrote:
|
|> I want to use my usb hd and my usb mp3-player an my linux computer.
|> if i plug them on on after one, they will assigned as sda (i.e. my
|> usb hd) and sdb (my mp3-player) . so i can add them to /etc/fstab.
|> the problem is; if i plug on only one of them or in another order,
|> the device files are changed to and the mount points are not
|> correct. my first idea was to use volume labels. that works fine
|> with my ext2 partition but i don't helps on my vfat partitions. the
|> compactflash cards an two of my partitions on my usb-hd must be
|> vfat partitions. any ideas how to fix?
|
|
| i have this same problem and i cannot get it resolved. i believe with
|  "devfs" you can get consistent device names?? not sure, but debian
| does not have devfs, so i need a different solution. i was hoping
| there was some "hotplug" script that would link the plugged in device
|  to whatever system device it was assigned to, but i have found
| nothing.
|
| help please?

~From what I understand, devfs is a virtualization of the /dev device
tree so that when you plug in devices, they can appear and disappear
once you unplug them (an example of this would be to do something like
plug in a scanner and it appears as "/dev/scanner/scanner0", and have it
disappear once it is gone). But what happens when you plug in a mass
storage device isn't the same as plugging in a new peripheral (at least
to the computer), you are plugging what the computer sees as a new
harddrive, and it assigns those in the order that it sees them, in one
case, your portable hdd first, in another, your MP3 player.

I just whipped up the attached script, I think that it, slightly
modified might help you out a bit (just type in the script name, m or u
for mount or unmount, and the letter of the device (i.e. a for sda, b
for sdb, etc.) I haven't used them so there may be a few bugs. Modify it
for your mp3 player according to what you need too. It might have to be
setuid root, or something similar. Try it as a user first.

Check for the TODO parts, and modify to what you need.

Hope that was helpful, if you need any more help, just email.

Nathan Clayton

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.2-rc1-SuSE (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQE/m4S7XN24wxDWCsYRAuQTAKCQUnV6oftRejonR1VBqDmqq3u0fACgnfhF
L822Kp75NEjff9X8XuaqbwY=
=O2w3
-----END PGP SIGNATURE-----

--------------040300030807020901040808
Content-Type: application/x-sh;
 name="usbhdmount.sh"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="usbhdmount.sh"

#!/bin/sh
# usbhdmount.sh
# copyright (c)2003 Nathan Clayton (nathanclayton@daftwazzock.com)
# This file is licensed under the GNU General Public License (GPL),
#  version 2.0 or higher.

# show the usage help
displayhelp() {
  echo "usbhdmount: mount or unmount the points on your USB harddrive"
  echo "SYNTAX: usbhdmount m|u deviceletter"
  echo "m                   mount the device"
  echo "u                   unmount the device"
  echo "usbdeviceletter     this is the device letter for your usb device"
  echo "                    (e.g. it would be \"a\" for /dev/sda, \"b\" for /dev/sdb, etc.)"
  exit 1
}

# check whether or not we're mounting or unmounting
mount_or_unmount() {
  case  "$1" in
    [mM] ) mountfiles "$2";;
    [uU] ) unmountfiles;;
    * ) displayhelp;;
  esac
}

#TODO: modify the commands according to your chosen mount points (the second number is part of the file ($1, and then another 1 could translate into a1 after variable substitution)
# recieves one argument, which letter to append to /dev/sd
mountfiles() {
  mount -t vfat /dev/sd$11 /mountlocation
  mount -t vfat /dev/sd$12 /mountlocation2
}

#TODO: modify the commands according to your chosen mount points
unmountfiles() {
  umount /mountlocation
  umount /mountlocation2
}

# check if there are two arguments, otherwise print out help text and exit
if [ "$#" -eq 2 ]
then
  mount_or_unmount "$1" "$2"
else
  echo "$#"
  displayhelp
fi

--------------040300030807020901040808--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
