From: cr <cr@orcon.net.nz>
Subject: Re: How to mount CD-ROM?
Date: Fri, 1 Nov 2002 02:29:06 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021031115622.E56C8759E5@smtp.orcon.net.nz>
References: <5.1.0.14.1.20021029083056.0215aec0@celine> <5.1.0.14.1.20021030075115.020ef7a0@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021030075115.020ef7a0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Thursday 31 October 2002 05:11, Ray Olszewski wrote:
> At 09:46 PM 10/30/02 +1300, cr wrote:
> [...]
>
> >  if the
> >
> > > installation really did work correctly, then /mnt/cdrom should be a
> > > symlink to the correct block device (easy to check).
> >
> >/mnt/cdrom is a directory, not a symlink.   Which I assume means the
> >installation hasn't worked?
>
> Nope.  It was a typo on my part. It is /dev/cdrom that should be a symlink
> (probably to /dev/scd0)
> [...]

OK.   I wondered if that was the case, but I'm not familiar enough to have 
been sure that the installation couldn't have changed the properties of the 
/mnt/cdrom directory to look like a link.    Evidently not.


> > >          'unknown device'  means that the device entry exists in /dev,
> > > but it does not point to an actual, physical device on the system. Try
> > > mounting /dev/scd0 instead.
> >
> >Tried that before -  "unknown device"   still
>
> Your other message said that /dev/scd0 is a file that is 11 bytes long. It
> shouldn't be; it should be a pseudo-file entry -- in this case, a block
> device -- that provides an interface to the hardware. If you do "ls -l
> /dev/scd0", the result should be approximately this (this one is from my
> workstation):
>
>          brw-rw----    1 root     cdrom     11,   0 Jun 13  2001 /dev/scd0
>
> The "11" here is not a size; it is a device-major number. Make sure your
> corresponding entry has the initial "b" (the indicator of a block device)
> as well as the 11, 0.
> [...]

OK, my mistake, I did indeed misread the '11' as a filesize.   

> >lsmod showed  sg  and scsi-mod.
> >After  'insmod ide-scsi'   ide-scsi appeared in the list too.
> >But trying 'insmod sr_mod'   just gives four error messages of
> >'unresolved symbol unregister_cdrom_R94f2f104'   and similar.
>
> The absence of this module is probably the source of your problem, as it is
> the device driver for scsi CD-ROMs. modules.dep ssys it depends only on
> scsi_mod. I don't have enough info about your setup (kernel details,
> mostly) to know why you are getting ghe "unresolved symbol" errors, but the
> usual reasons are kernel-version mismatch or missing dependency. See what
> effect "modprobe sr_mod" has.

Same list of four   "unresolved symbol" errors, then 
"insmod /lib/modules/2.4.7-10/kernel/drivers/scsi/sr_mod.o  failed"

The module's there in /lib/....    , I looked.   


> >X-cd-roast seems to work quite happily without it, though.
>
> That's because it accesses the device by (pseudo-)LUN, not through the
> block device /dev/scd0.

OK, so it's a useful confirmation that the hardware's all working, but that's 
all.   Though it certainly does seem to need ide-scsi to be present.  


How does one find what modules are working - does  lsmod   list them all?

Is it possible to 'switch off'  modules once installed?   It occurs to me I 
could switch off  ide-scsi and sg and see if I can get my  IDE  CD-ROM 
reading back.  

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
