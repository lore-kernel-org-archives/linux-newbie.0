From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 21:29:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306102129.43210.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <3EE5AC60.201B082D@gelm.net> <20030610095434.A166@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030610095434.A166@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Tuesday 10 June 2003 15:54, Hal MacArgle wrote:
> Greetings: Delay taking time out to visit the hospital taking me away
> from this more interesting stuff. <grin> Comments below at request:

Hope all is now well then..

> Hal
>
> 	First off, to make matters worse, I note that my distribution
> disk does NOT have the /rootdisks directory so that's _one_ reason
> I've been in the dark so much.. The other, seemingly, big problem is
> that the "reluctant" system has an IDE HD but both CD's are SCSI,
> driven by a BusLogic controller.. There is, also, a SCSI scanner, but
> I've disconnected it during this mess, and a ZIP250..

Just what is the model number of the Bislogic controller and what is the make 
and type/model Nr, of the cdrom's. ???

>
> 	Re above; booting from a DRDos702 floppy the BIOS sees the
> BusLogic controller OK but doesn't, automatically, assign a drive
> letter to either CD.. The IDE HD on this machine does NOT have a Dos
> partition, only 3 Linux native and 1 swap, so I'm shot down with
> Stevens' instructions as the two images wont fit on a floppy.. Maybe
> I'm missing something here - my mind has turned to Jello. :^)... I
> have the Dos drivers for Atapi drives and the required mscdex, or
> equivalent, but that's no use with a SCSI drive.. I've got to
> research this somemore..
>
> 	Trying to boot from the SlackCD with the disk in either of
> the SCSI drives and the BIOS set to Boot: SCSI, A, C, it doesn't see
> either and goes right into the normal LILO boot of /hda3.. I'm
> guessing that the autoboot routine on the CD only works when you set
> the BIOS to: CDROM,,,, and the drive is ATAPI-IDE.. So, bottom line,
> is that the CD distribution I have installs OK on a pure ATAPI-IDE
> machine - which I have already done on another machine.

That sounds more like a bios limitation than a slackware problem.
Well you could swap disk's around then and install on the machine where it 
does work, after installing you change the disk back.

>
> 	Richard has installed using the boot/root combination from
> Slack8.0, but I can't seem to get it working so far.. He's, kindly,
> trying to solve that problem..

What happens when you try and which disk do you use as the initial boot disk,?
You should be using scsi.s from what i can gather.

>
> 	It's rather obvious, that the ./makedisk <filename>
> <kernel.img> routine in the distribution doesn't work, even tho I've
> tried formatting a floppy to 1720K and 1680K, which the routine is
> supposed to do automatically.. Searching google/linux; "makedisk
> slackware 8.1" brought several horror stories.. ./makedisk creates a
> file in /tmp/xxxx.img - but what to do with that?? Load it with
> loadlin? I still have so much to learn..

As i said before, i cant get that to work either, i also said things like that 
i drop by the wayside thinking i'm just dumb, but it seems not to be the 
case.

>
> 	To me the most unfortunate thing about this is: How can I,
> with a straight face, recommend the neighbours switch to Linux??

Have you reasd the Slackware-HOWTO and BOOTING.TXT files, there are quite a 
few scsi FAQ's there and my just help.

>
> 	Sorry this is so long..
>
> Hal
>
> > > I've just executed that line (on a nearby system) and it is now
> > > running the installation routine.  Note:  you may need to change
> > > the d: to a different letter (depending on what letter was assigned
> > > by DOS to your CDrom).
> > >
> > > > Is there a way to copy the CDROM's root filesystem to /dev/hdb1
> > > > and alter the default 'scsi.s' bootdisk so that it loads the root
> > > > image from /dev/hdb1?    rdev?
> > >
> > > Yes, but it should not be necessary.  Just try loadlin.exe
> > > (get it from the loadlin zip file in the /kernels directory
> > > of the CDrom).

Maybe Steven could explain how he would copy the cdrom's root file system to a 
blank partiton and get it to boot and allow one to install the complete 
slackware disk series on the same HD.?
AFAIK you cant but i could be missing something.!. Or should i say i have 
never done such a uncommon thing and do say it should NOT be nessasay at all 
to even think of doing it

> >
> >  The installation runs much faster from hard drive.  ;-)
> >
> > > Cheers,
> > > Steven
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
