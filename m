From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to mount CD-ROM?
Date: Mon, 18 Nov 2002 08:54:12 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021118083008.020d92e0@celine>
References: <5.1.0.14.1.20021031075555.020ce520@celine>
 <5.1.0.14.1.20021030075115.020ef7a0@celine>
 <5.1.0.14.1.20021031075555.020ce520@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021118092133.AFBB17FC17@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Comments inline.

At 11:58 PM 11/18/02 +1300, cr wrote:
>Sorry for the long delay.   Real Life (TM) interfered with my investigations,
>and also a point you mentioned brought up a possible complication which I'll
>mention at the end...

Perfectly understandable. I hope you will be equally understanding ... the 
long gap between my last message and your reply today means that I do not 
recall the details of the prior discussion very well. So please forgive me 
if I suggest here something I've already suggested (or you've previously 
tried).

>On Friday 01 November 2002 05:05, Ray Olszewski wrote:
> > At 02:29 AM 11/1/02 +1300, cr wrote:
> > >[...]
> > >
> > >I don't have enough info about your setup (kernel details,
> > >
> > > > mostly) to know why you are getting ghe "unresolved symbol" errors, but
> > > > the usual reasons are kernel-version mismatch or missing dependency.
> > > > See what effect "modprobe sr_mod" has.
> > >
> > >Same list of four   "unresolved symbol" errors, then
> > >"insmod /lib/modules/2.4.7-10/kernel/drivers/scsi/sr_mod.o  failed"
> > >
> > >The module's there in /lib/....    , I looked.
> >
> > Yes, of course it is. The messages you are seeing say that some external
> > function calls *in* the module cannot be resolved.
> >
> > Usually this occurs because some other module that the one you are trying
> > to load provides the missing functionality; modprobe is supposed to handle
> > this for you (by consulting modules.dep and loading anything that is
> > needed). After the unsuccessful modprobe, what does "lsmod" tell you about
> > what is loaded? Is the module scsi_mod loaded, and what does the output say
> > about what other modules are using it (the stuff in [] after the size)?
>
>OK.   /sbin/lsmod gives:
>
>Module                  Size  Used by
>esssolo1               25376   0  (autoclean)
>gameport                1840   0  (autoclean) [esssolo1]
>soundcore               4208   4  (autoclean) [esssolo1]
>binfmt_misc             6064   1
>autofs                 11232   0  (autoclean) (unused)
>ipchains               36000   0
>nls_iso8859-1           2800   1  (autoclean)
>nls_cp437               4320   1  (autoclean)
>umsdos                 24832   1  (autoclean)
>msdos                   5104   0  (autoclean) [umsdos]
>fat                    31392   0  (autoclean) [umsdos msdos]
>usb-ohci               17936   0  (unused)
>usbcore                49792   1  [usb-ohci]
>ext3                   61936   2
>jbd                    38976   2  [ext3]
>
>
>Doing /sbin/modprobe sr_mod brings a string of 'unresolved symbol' messages
>and  "insmod sr_mod failed", and  lsmod indicates no change.
>
>Trying to run X-CD-Roast gives an error message 'Failed to scan SCSI-bus'
>*but* lsmod indicates it's loaded a couple of modules:
>
>Module                  Size  Used by
>sg                     27488   0  (autoclean) (unused)
>scsi_mod               92208   1  (autoclean) [sg]
>esssolo1               25376   0  (autoclean)
>..
>..
>
>Then (but not before), /sbin/insmod ide-scsi works, after which X-CD-Roast
>works.

As I check my setup, it appears that sr_mod needs an argument that tells it 
what device to attach to. See if adding that helps. Here, as an example, is 
what I do (in /etc/modules)

         # the stuff to enable ide-scsi emulation for the CD-ROM
         scsi_mod
         sr_mod scd0
         sg
         ide-scsi

>However, trying to mount /mnt/cdrom still brings up a 'wrong fs type'
>message.

This is where my hazy memory of our prior discussion raises problems. Most 
lilely, this is the direct result of sr_mod not loading. So address that 
first off.

If that's not it ... is /etc/cdrom properly symlinked, probably to 
/dev/scd0? (I can't check my system for the right answer, because it has 
both a CD-R and a DVD drve, and /dev/cdrom symlinks to the DVD.) Does the 
same thing happen if you try to mount /dev/scd0 someplace.

> > The other reason this occurs is because the module was compiled for a
> > different kernel than the one loaded. Did you compile (or otherwise change)
> > your kernel? If so, did you also compile (or otherwise change) modules,
> > including sr_mod specifically?
>
>No, I'm using the standard RedHat 7.2 distribution.   I'm not sufficiently
>confident to do alarming things to the kernel.   Or modules.    ;)
>
>It looks maybe like sr_mod is the cause of the problem, since I can't seem to
>make it load.
>
>
>
>Referring back to a previous message, you said
>
> > If you do "ls -l /dev/scd0", the result should be approximately this (this
> > one is from my workstation):
> >
> >         brw-rw----    1 root     cdrom     11,   0 Jun 13  2001 /dev/scd0
>
>My system gives
>brw-rw----    1 root     disk      11,   0 Aug 31  2001 scd0
>
>I'm not sure if the 'disk' indicates a source of problems?

No. That's just a different practice with respect to the device's group; 
it's the kind of distro-to-distro difference that is commonplace. As long 
as you are doing your tests as root, it will be of no significance.


> > >Is it possible to 'switch off'  modules once installed?   It occurs to me
> > > I could switch off  ide-scsi and sg and see if I can get my  IDE  CD-ROM
> > > reading back.
> >
> > Well, you can remove modules with "rmmod". I don't know how that interacts
> > with the lilo.conf settings that tell the kernel to use ide-scsi emulation
> > for an IDE device.
>
>Actually it's grub.conf, since I'm booting with Grub - or trying to.
>/boot/grub/grub.conf says
>
># grub.conf generated by anaconda
>#
># Note that you do not have to rerun grub after making changes to this file
># NOTICE:  You have a /boot partition.  This means that
>#          all kernel and initrd paths are relative to /boot/, eg.
>#          root (hd0,0)
>#          kernel /vmlinuz-version ro root=/dev/hda2
>#          initrd /initrd-version.img
>#boot=/dev/hda
>default=0
>timeout=10
>splashimage=(hd0,0)/grub/splash.xpm.gz
>title Red Hat Linux (2.4.7-10)
>         root (hd0,0)
>         kernel /vmlinuz-2.4.7-10 ro root=/dev/hda2 hdb=ide-scsi
>         initrd /initrd-2.4.7-10.img
>
>HOWEVER, I'm not booting successfully off the hard drive, when I start up it
>says 'GRUB' and hangs.   (and the previous install where I was using lilo did
>the same).    So I'm booting off the floppy made at install time.   I presume
>that reads grub.conf, but I'm not sure of that.
>
>(Trying to fix this was next on my To Do list after the CD-ROM drive).

I haven't the foggiest idea, as this question applies to grub, since I 
haven't used grub in years. Were you using lilo, the answer would be NO -- 
lilo.conf gets read by the *Linux* application called lilo (the program 
that installs the bootloader), but not by lilo-the-bootloader itself at 
boot time. But if you used this lilo.conf file when creating the bootdisk, 
you would be fine.

grub may be different, though. Certainly this comment in grub.conf -- "Note 
that you do not have to rerun grub after making changes to this file" -- 
suggests that it is; the analogous statement about lilo would NOT be true.

>I did wonder if the booting problem had any relevance to the cd-rom, but
>everything else on the system seems to work OK.   I hope it isn't something
>vitally relevant I should have mentioned.

Since you can burn CDs, enough of the ide-scsi stuff is being loaded to 
allow the burning application to find the drive on the pseudo-scsi bus. 
This means that problems at this level ae unlikely to exist. My best guess 
is that you are simply not loading sr_mod correctly.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
