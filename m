From: James Miller <jamtat@mailsnare.net>
Subject: how to find a usb hd's node
Date: Wed, 10 Sep 2003 18:28:37 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0309101807510.1084@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

I think I'm using the term "node" correctly in the subject line.  For
clarification, what I mean is the dir under /dev that will represent the
drive's filesystem.  The system is a "ThinkNic" that was passed along to
me by someone for whom it stopped working.  It also has spent about
99.8273% of its time in my possession in a non-working state as well: it
just won't boot most of the time.  For whatever strange reason, it's been
booting just fine for the last few days.  Anyway the ThinkNic is a sort of
thin client thingy that runs its OS from a CD and RAM.  Sort of a web
station type arrangement.  Has a CD drive, 64MB RAM chip, 200Mhz
processor, onboard NIC, modem, video and USB ports.  The system the
manufacturer made to run on it is Linux - uses the 2.2.x kernel, a really
primitive WM (Twm?), the Netscpae browser and Tik chat client.  I decided
to try an alternate "live CD" Linux on it.  I'm pretty limited owing to
low RAM, but Damnsmalllinux boots and runs just fine on it.  This is based
on Knoppix, which in turn is based on Debian.  So I'm using what is
ultimately a Debian based distro at the moment.  Kernel 2.4.19.  I checked
dmesg output, and it seems the kernel has recognized the USB.  Problem is,
I'm not able to mount the USB HD I've attached to the USB port using any
of the /dev/xxx's that are familiar to me (I get "not a valid block
device" messages when I try).  I discovered on other distros - quite by
accident - via my friend the gui, that USB storage devices are often
located under /dev/sdxx.  However, when I su and do "mount /dev/sda1
/mnt/usb-hd" (yes, I created the mount point /mnt/usb-hd before trying
this), I get the "not a valid block device" message.  So, is there a way
of discovering under which /dev/node the USB drive has been put?  Or, is
there a way of finding out why it's not been put in such a place,
presuming it hasn't?  In short, how do I locate the danged thing!  More
info needed?  Please let me know.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
