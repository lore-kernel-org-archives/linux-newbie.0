From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: No Boot Problem
Date: Fri, 26 Jul 2002 21:23:28 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207262123.28564.sotl155360@earthlink.net>
References: <5.1.0.14.1.20020725203925.022778d0@celine> <5.1.0.14.1.20020726093031.0228aa80@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020726093031.0228aa80@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org, Chuck Gelm <nc8q@gelm.net>

First thanks to all who took the time to respond.
Second I have the box working but I still have no idea what the real problem 
is.
To get the box working I reinstalled the 3rd hard drive; putting the two 
normally in the box on a shelf.
Then I installed Linux on the third HD from the CD-Reader and created a 
floppie boot disk.
Then I utilized the floppie boot disk to book up Linux which then I shut down 
normally.
Then I reinstalled the 2 HD that are normally in the system and booted them in 
a normal fashion.

Bottom line
The only thing I can figure is that if BIOS must complete a boot in a proper 
sequence and then shut down in the correct sequence or else. 
And, that "or else" is a problem; not just a problem but a major problem.

Thanks
Frank 




On Friday 26 July 2002 12:57, Ray Olszewski wrote:
> In your followup, you haven't really told us much more about the problem.
>
> Based on your clarifications, I'd surmise a problem of some sort with the
> hard disk connection -- either the controller itself,  which in modern
> systems is usually part of the motherboard electronics (this is why I
> characterized your problem as a mobo problem before), with the BIOS
> settings for the hard disk(s), or possibly with the cable (is the CD drive
> that you say works for booting on the same IDE channel as the hard disks?
> I'd *guess* not from the BIOS report you provide below).
>
> The alternative is that you have two separate problems, one with the old
> (Windows) hda, the other with the replacement hard disk you attempted to
> install to. Since you only examined the replacement drive under Windows, I
> can't venture any real guess about what its problem might be (although it
> *might* be as simple as a BIOS mismatch, if you didn't either set the BIOS
> to autoprobe for IDE primary master or actually specify the new drive
> geometry).
>
> A couple of specific comments are below.
>
> At 08:44 AM 7/26/02 -0400, Frank Roberts - SOTL wrote:
> [...]
>
> > > At this point, a description of the failure mode would belp more than
> > > "refused to boot".  Did LILO even begin to run?
> >
> >No
> >
> > > Did it display any messages on teh screen?
> >
> >This is going to take several boot and I dought that I get all the info
> >completely correct. It simply goes by on the screen too fast.
> >
> >1. CPU=Celeron 300 MHz
> >2. RAM is checked                  Passed
> >3. Extended RAM is checked  Passed
> >4. System BIOS Shadowed
> >5. Vidio BIOS Shadowed
> >6. Upper limit segmant address = F299
> >7. Fixed Disk 0: TD@ @06400L
> >8. Fixed Disk 1: WDC AC310200R
> >9. ATAPI CD-ROM: CDR-8240B
> >10. ATAPI CD-ROM: SONY CD-RW CRX175E2
> >11. System Configuration Data Updated
> >12. Blinking Currersor
>
> This is all information from the system's BIOS. You are right in inferring
> that LILO does not appear ever to run.
>
> > > >I stuck Tomsrtd in and boot the box into Toms followed by a normal
> > > > shut down.
> > > >
> > > >I then stuck RH 7.3 install in and started an upgrade to see what
> > > > would happen. The box finally booted into RH after 5 or 6 tries.
> > >
> > > This sounds more and more like a hardware failure, perhaps a mobo
> > > problem. The system as you described it has now had problems with a
> > > Windows boot floppy, some hard disk bootloader (I surmise lilo), and
> > > syslinux (I believe RH boot floppies use syslinux).
> >
> >Don't see that personally. The two normal systems HD were out of the
> > system with the third HD in the system and the system will boot and load
> > from the floppie and CD-Read after system restoration.
>
> What does this mean (specifically the phrase "system restoration")?
>
> You say the RH installer took 6 tries before it worked. I realize now that
> you did not say if you were doing this from a floppy or a CD ... RH can
> install either way ... but that is part of the reason I interpret your
> report as a hardware failure -- even with the 2 original hard disks
> removed, you have problems.
>
> In re-reading what you wrote, I also realize that I don't know for sure
> what you mean by "The box finally booted into RH after 5 or 6 tries". I had
> read it to mean that the RH installer itself took 6 tries to boot (get to
> the install process), but perhaps you mean you had to try installing 6
> times before the new hard disk would boot. In any case, you can see the
> need to clarify your report.
> [...]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
