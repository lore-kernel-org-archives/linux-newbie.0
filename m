From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 06:01:04 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE5AC60.201B082D@gelm.net>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net> <3EE614A6.1CBE57ED@actrix.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: qwms-avib@dea.spamcon.org, haltec@kvinet.com, linux-newbie@vger.kernel.org

Hi, Steven

qwms-avib@dea.spamcon.org wrote:
> 
> Chuck Gelm wrote:
> >
> > I've created slackware-8.1-iso & slackware-9.0-iso CDROMs.
> > I have exhausted attempts to use them as install media
> > while booting from a single floppy.
<snip>
> Now you are getting close to a solution.  You take the kernel
> from the CDrom (bzImage) and the image of the installation
> filesystem (initrd.img) and boot them (from DOS) using loadlin.exe:
> ---------------------------------------------------------------
> loadlin d:\kernels\scsi.s\bzImage initrd=d:\isolinux\initrd.img
> ---------------------------------------------------------------
 
 Provided that your boot floppy's o/s can recognize the CDROM drive.
;-)

 Thanks, Steven, this should work for me.

 Hal:  Does your reluctant system, if booted from a DOS diskette,
have its SCSI CDROM drive recognized?

Regards, Chuck

> I've just executed that line (on a nearby system) and it is now
> running the installation routine.  Note:  you may need to change
> the d: to a different letter (depending on what letter was assigned
> by DOS to your CDrom).
> 
> > Is there a way to copy the CDROM's root filesystem to /dev/hdb1
> > and alter the default 'scsi.s' bootdisk so that it loads the root
> > image from /dev/hdb1?    rdev?
> 
> Yes, but it should not be necessary.  Just try loadlin.exe
> (get it from the loadlin zip file in the /kernels directory
> of the CDrom).

 The installation runs much faster from hard drive.  ;-)

> Cheers,
> Steven
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
