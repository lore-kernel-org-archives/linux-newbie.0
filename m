From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 09:54:35 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030610095434.A166@lnx2.w8mch.ampr.org>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net> <3EE614A6.1CBE57ED@actrix.co.nz> <3EE5AC60.201B082D@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3EE5AC60.201B082D@gelm.net>; from nc8q@gelm.net on Tue, Jun 10, 2003 at 06:01:04AM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Delay taking time out to visit the hospital taking me away
from this more interesting stuff. <grin> Comments below at request:
Hal

On 06-10, Chuck Gelm wrote:
> Hi, Steven
> 
> qwms-avib@dea.spamcon.org wrote:
> > 
> > Chuck Gelm wrote:
> > >
> > > I've created slackware-8.1-iso & slackware-9.0-iso CDROMs.
> > > I have exhausted attempts to use them as install media
> > > while booting from a single floppy.
> <snip>
> > Now you are getting close to a solution.  You take the kernel
> > from the CDrom (bzImage) and the image of the installation
> > filesystem (initrd.img) and boot them (from DOS) using loadlin.exe:
> > ---------------------------------------------------------------
> > loadlin d:\kernels\scsi.s\bzImage initrd=d:\isolinux\initrd.img
> > ---------------------------------------------------------------
>  
>  Provided that your boot floppy's o/s can recognize the CDROM drive.
> ;-)
> 
>  Thanks, Steven, this should work for me.
> 
>  Hal:  Does your reluctant system, if booted from a DOS diskette,
> have its SCSI CDROM drive recognized?
> 
> Regards, Chuck

	First off, to make matters worse, I note that my distribution
disk does NOT have the /rootdisks directory so that's _one_ reason
I've been in the dark so much.. The other, seemingly, big problem is
that the "reluctant" system has an IDE HD but both CD's are SCSI,
driven by a BusLogic controller.. There is, also, a SCSI scanner, but
I've disconnected it during this mess, and a ZIP250..

	Re above; booting from a DRDos702 floppy the BIOS sees the
BusLogic controller OK but doesn't, automatically, assign a drive
letter to either CD.. The IDE HD on this machine does NOT have a Dos
partition, only 3 Linux native and 1 swap, so I'm shot down with
Stevens' instructions as the two images wont fit on a floppy.. Maybe
I'm missing something here - my mind has turned to Jello. :^)... I
have the Dos drivers for Atapi drives and the required mscdex, or
equivalent, but that's no use with a SCSI drive.. I've got to
research this somemore..

	Trying to boot from the SlackCD with the disk in either of
the SCSI drives and the BIOS set to Boot: SCSI, A, C, it doesn't see
either and goes right into the normal LILO boot of /hda3.. I'm
guessing that the autoboot routine on the CD only works when you set
the BIOS to: CDROM,,,, and the drive is ATAPI-IDE.. So, bottom line,
is that the CD distribution I have installs OK on a pure ATAPI-IDE
machine - which I have already done on another machine.

	Richard has installed using the boot/root combination from
Slack8.0, but I can't seem to get it working so far.. He's, kindly,
trying to solve that problem..

	It's rather obvious, that the ./makedisk <filename>
<kernel.img> routine in the distribution doesn't work, even tho I've
tried formatting a floppy to 1720K and 1680K, which the routine is
supposed to do automatically.. Searching google/linux; "makedisk
slackware 8.1" brought several horror stories.. ./makedisk creates a
file in /tmp/xxxx.img - but what to do with that?? Load it with
loadlin? I still have so much to learn..

	To me the most unfortunate thing about this is: How can I,
with a straight face, recommend the neighbours switch to Linux??

	Sorry this is so long..

Hal

> 
> > I've just executed that line (on a nearby system) and it is now
> > running the installation routine.  Note:  you may need to change
> > the d: to a different letter (depending on what letter was assigned
> > by DOS to your CDrom).
> > 
> > > Is there a way to copy the CDROM's root filesystem to /dev/hdb1
> > > and alter the default 'scsi.s' bootdisk so that it loads the root
> > > image from /dev/hdb1?    rdev?
> > 
> > Yes, but it should not be necessary.  Just try loadlin.exe
> > (get it from the loadlin zip file in the /kernels directory
> > of the CDrom).
> 
>  The installation runs much faster from hard drive.  ;-)
> 
> > Cheers,
> > Steven
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
