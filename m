From: James Miller <jamtat@mailsnare.net>
Subject: help with IDE zip drive
Date: Tue, 8 Jun 2004 17:38:52 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406081720550.15997@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Well, the time has come to finally try and get the zip drive that's been
sitting idly in this computer ever since I install Debian Sid about 6
months ago, up and running.  I've never gotten it to work so far, having
tried the traditional stuff that always worked before (mount /dev/hdd
/zip, making an entry in /etc/fstab to that effect).  I worked at it a bit
half-heartedly when I first set up the machine, then gave up.  Now my wife
wants me to format some zip disks for her, so I need to find out what the
problem is and get it useable.  This is an IDE Zip 100 drive - nothing out
of the ordinary.  It's the slave on the secondary IDE channel.  It worked
fine under the previous OS I had installed on this machine (Libranet - a
Debian knock-off).  I didn't move any cables or jumpers when I removed
Libranet and installed Sid.  But now, it's just stopped working.  When I
issue the command mount /dev/hdd /zip I get /dev/hdd: Invalid argument
mount: /dev/hdd: can't read superblock.  The drive physically works since,
when I insert a disk the light does on and it spins up.  I can't totally
rule out hardware failure, but I'm not looking at that seriously now since
it worked fine up to the upgrade.  I recall looking at dmesg oputput and
seeing the drive show up as an IDE zip device at /dev/hdd - so I can't see
that I'm doing something wrong there.  Is there a way to double check?
I've been convinced that I'm being foiled by devfs, but that's only an
idea and may simply owe to my poor understanding of devfs and how to work
with it (are you really even supposed to work with it?).  I'm running the
2.6.5 kernel, but the drive was not working under previous 2.4.x kernels I
ran either.  Any help anyone could give on finally getting this drive
working would be greatly appreciated.

James

PS Yes, I am issuing the mount command as root, and the directory /zip
does exist.  I have 4 IDE devices in this machine: hda is a 10GB IDE hard
drive, hdb is a CD/DVD ROM drive, hdc is a 20GB IDE hard drive and hdd is
the zip drive.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
