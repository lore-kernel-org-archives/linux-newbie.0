From: wa4chq@netscape.net (neil t)
Subject: re: lilo questions.......
Date: Sat, 23 Nov 2002 14:03:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3B60FCE9.0E186F1F.0006BEFC@netscape.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

greetings and again tnx for the help---

>I copied an installation guide for Debian Woody 3.0, but it seems to be
>geared to setting up a server.  I just want regular install.  I did use it
>as a guide when I first installed Debian, and it did seem to work, but I
>did have to tweak it a bit.  (any suggestions for a better installation
>guide?)

>>>>>>Better than what? You don't tell me enough to know ahat you are using now.

It is called "Installing Woody (Debian Linux 3.0) and the url is:
wysiwyg://17/http:www.aboutdebian.com/install3.htm  (that is what I see on the pages I printed.....)

>When I installed it, I made a boot floppy and it worked ok, but was very
>slow.

>>>>>"Slow" and "fast" are in the eye of the beholder, so your telling me >>>>>this is "very slow" in your opinion doesn't let me know if you are describing the normal speed of floppy-based boots or a system with a problem.

I was describing booting from the floppy disk....

>>Getting the "lingo" down is less important then being careful about your
descriptions. For example, after noting at the beginning of this message
that you'd previously made a "typo", you continue to misname "lilo.conf"
"lilo.config" (unless Mandrake really does use a different name for this
file ... I know Debian still calls it lilo.conf). When asking for
configuration help, accurate reporting of the details is essential.

whoops!  yes it is "lilo.conf" !

Ok, so I guess if I install Debian 3.0 or even Red Hat again, it will replace my existing bootloader but I will still have the option to make Mandrake the default.  This is determined when I edit /etc/lilo.conf.

Is there a standard format for adding other linux distro's to /etc/lilo.conf?  One of replies to my question explains it this way:

"It does not really make any differance which system installed lilo, the
secret is mounting all your disks/partitions where "lilo" can reach them all in one go, you can define any partition "in use or not" as long as it is mounted.

An example;
dos = hda1
redhat = hda5
mandrake = hdc1
slackware = hdd1

You boot with mandrake, you then create some extra dirs'

mkdir /hda5
mkdir /hdc1
mkdir /hdd1

mount -t ext2 /dev/hda5 /hda5
mount -t ext2 /dev/hdd1 /hdd1

Edit /etc/lilo and reflect the above

image = image-redhat
label = redhat
root = /hda5/boot/image-redhat
read-only

same idea for slack.

run lilo with -t to check that all is ok, when all is ok /sbin/lilo
reboot

Another way is to copy all bootable images into one /boot dir and edit
lilo.conf accordingly."

I have seen some say:
image=/boot/vmlinuz-2.2.0-ide pci<<<<<< is it /boot because all bootable 
images are in /boot?
      label=Debian (example)
      read-only
      root=/dev/hdd1
Anyway....again thanks for helping me with this.....
Cheers-
Neil t.


 
-- 
Arachne/DRdos-Mandrake9.0/Basiclinux-QrpHamRadio
http://www.qsl.net/wa4chq
 


__________________________________________________________________
The NEW Netscape 7.0 browser is now available. Upgrade now! http://channels.netscape.com/ns/browsers/download.jsp 

Get your own FREE, personal Netscape Mail account today at http://webmail.netscape.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
