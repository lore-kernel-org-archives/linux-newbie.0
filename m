From: James Miller <jamtat@mailsnare.net>
Subject: Re: 3rd install failed hardware setup
Date: Thu, 10 Feb 2005 12:11:33 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0502101144130.9187@localhost.localdomain>
References: <5.1.0.14.1.20050204075906.01f6fce8@celine>
Mime-Version: 1.0
In-Reply-To: <5.1.0.14.1.20050204075906.01f6fce8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 4 Feb 2005, Ray Olszewski wrote:

> At 08:50 AM 2/4/2005 -0600, James Miller wrote:
> >Could moving the directory /usr/lib to the second drive have caused this
> >problem? Did I maybe screw up some permissions in copying? Any
> >suggestions--short of another install--for fixing it if it does seem like
> >this is where the problem lies?
>
>
> First, "cp -R" is not the safest way to cp an important directory like
> /usr/lib . "cp -a" (or its equivalent, "cp -dpR") is much safer. It is
> possible you introduced some sort of ownership or permissions or symlink
> problem with your approach ...but I can't actually think of one that would
> affect the contents of /dev . That makes me wonder if the info about
> /dev/dsp is a red herring (/dev/dsp normally accesses the sound subsystem,
> not the modem ... but I am not familiar with the Lucent driver or its
> peculiarities).
>
> All else I can suggest, really, is that you round up the usual suspects and
> see if they shed any light on the problem. Look at (and if you want help
> with the process, show us) the output of:
>
>          more /etc/fstab
>          df
>          ls -l /dev/ds*
>          ls -l /dev/modem*
>          lsmod
>                  (in particular, is lt_modem loaded?)
>
> And can a lightweight command-line app (minicom is the usual one) access
> the modem?  That is, might this be a KDE problem (your cp approach *may*
> have interfered with its access to some needed library)?

I've made some time to proceed further with this. I basically reinstalled
the system and moved things around. To reiterate, the problem was shortage
of disk space (4GB at /dev/hda and 1.2GB at /dev/hdb) and an install
routine that only wanted to use the 4GB drive and didn't offer much in the
way of alternate mount points. My solution was to copy parts of /usr (the
largest dir on the root filesystem) onto /dev/hdb and make a mount point
for it, editing fstab accordingly. This worked--i.e., the system booted
successfully and the dir on /dev/hdb got mounted--but I lost certain
device functionality. Namely the modem and sound.

I took a bit of a different approach on subsequent attempts. I divided
/dev/hda into 2 2GB partitions. The install routine let me make one of
these /home, thankfully, and I installed the system to the other one. I
installed Grub to /dev/hdb, where I planned on locating the root
filesystem this time. Later, I booted from a different CD and copied
everything from / over to /dev/hdb *except* the contents of /usr, which
remained on /dev/hda(1). I then created mount points and the like, and
edited /etc/fstab. It pretty much worked. But again I had those device
failures--modem and sound. I've resolved that by adding the names of
relevant modules to /etc/modules. Now the modem works, and I don't get the
/dev/dsp not found error message on boot (no speakers, so I can't test if
it really, really works). So, something in the /usr directory--probably
under /lib--not getting mounted when expected (along with the root
filesystem) seems to be the problem. Modules seem to not be loading
because of it. I do get an error message during boot about a shared
library--libpci.so.2--not being able to load, but the system seems to work
ok nonetheless. I've confirmed that this file is located in /usr/lib. This
is probably a situation where an initrd is needed, no? Does it seem like
that libpci.so.2 not getting loaded will cause any system functionality
problems later?

Finally, to get the system to boot I had to leave the /boot directory on
/dev/hda1 (which gets mounted later under /usr) since that's where Grub
was expecting to find it. I don't like the idea of doing this, but I don't
know how else to handle the problem of where Grub thinks the root
filesystem is (thinks it's on /dev/hda and so only looks for the /boot
directory there). Any advice on resolving that problem so I can undo the
kludge I've done to get the system booting? Having the /boot directory
under /usr is wierd at the least: maybe it's even dangerous? Editing
menu.lst does NOT do it. I think the location of the root filesystem must
be specified to Grub eslewhere: maybe in device.map?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
