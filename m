From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: help with IDE zip drive
Date: Wed, 9 Jun 2004 14:33:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040609183326.GA854@lnx2.w8mch.ampr.org>
References: <Pine.LNX.4.58.0406081720550.15997@debian-emach>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0406081720550.15997@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings James: No Zip guru and bear with me if this old man doesn't
remember exactly - but this is what we do with our Zip250, presuming
the 100 same:

Fetched iwclcontainer-lnx-x86-10.tgz from iomega.com and install it.
Invoking iw ? lists the flags with -ext2 the one used to change the
preformatted disks from fat to ext2.. -f alone formats with the fat
fs.. A fairly good set of doco's included in the package.. Apparently
iOmega wants to work with Linux..

First though the kernel must be advised about the drive with; I use
Grub and enter on boot hdc=ide-scsi  the secondary master IDE spot.
I believe append hdc=ide-scsi works with Lilo and I suspect you can
hard compile the kernel if you wish, not sure.. Thence install the
module ide-scsi, as the software wants to talk to a scsi drive, not an
IDE drive so it has to be emulated.. A simple mount /dev/sda4 then
mounts it and you can carry on... Why iOmega selected sda4 for this,
no one seems to know but it's a fact, at least here.. I seem to
remember you can format it as sda_ forget the details. I keep the
defaults if possible..

If the drives fs is kept fat then you can work with it using mtools
as z: drive, changing a conf file in /etc, forget the exact name off
hand.. I bought blanks from eBay formatted for the Mac, because they
were cheaper for some reason, and reformatted them ext2 or fat...
If you use it for NFS, there are other details..

HTH. Blast back for any other details I may have missed.. Good luck.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
           
	     Anyone can pile complexity upon complexity;
                  only a genius can truly simplify..

On 06-08, James Miller wrote:
> Well, the time has come to finally try and get the zip drive that's been
> sitting idly in this computer ever since I install Debian Sid about 6
> months ago, up and running.  I've never gotten it to work so far, having
> tried the traditional stuff that always worked before (mount /dev/hdd
> /zip, making an entry in /etc/fstab to that effect).  I worked at it a bit
> half-heartedly when I first set up the machine, then gave up.  Now my wife
> wants me to format some zip disks for her, so I need to find out what the
> problem is and get it useable.  This is an IDE Zip 100 drive - nothing out
> of the ordinary.  It's the slave on the secondary IDE channel.  It worked
> fine under the previous OS I had installed on this machine (Libranet - a
> Debian knock-off).  I didn't move any cables or jumpers when I removed
> Libranet and installed Sid.  But now, it's just stopped working.  When I
> issue the command mount /dev/hdd /zip I get /dev/hdd: Invalid argument
> mount: /dev/hdd: can't read superblock.  The drive physically works since,
> when I insert a disk the light does on and it spins up.  I can't totally
> rule out hardware failure, but I'm not looking at that seriously now since
> it worked fine up to the upgrade.  I recall looking at dmesg oputput and
> seeing the drive show up as an IDE zip device at /dev/hdd - so I can't see
> that I'm doing something wrong there.  Is there a way to double check?
> I've been convinced that I'm being foiled by devfs, but that's only an
> idea and may simply owe to my poor understanding of devfs and how to work
> with it (are you really even supposed to work with it?).  I'm running the
> 2.6.5 kernel, but the drive was not working under previous 2.4.x kernels I
> ran either.  Any help anyone could give on finally getting this drive
> working would be greatly appreciated.
> 
> James
> 
> PS Yes, I am issuing the mount command as root, and the directory /zip
> does exist.  I have 4 IDE devices in this machine: hda is a 10GB IDE hard
> drive, hdb is a CD/DVD ROM drive, hdc is a 20GB IDE hard drive and hdd is
> the zip drive.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
