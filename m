From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Sanyo CDR-H94A (non atapi) Booting???
Date: Mon, 31 Mar 2003 15:41:40 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030331154140.A287@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 03-30, Boris Bezlaj wrote:
> On Sun, Mar 30, 2003 at 01:29:29PM -0500, Hal MacArgle wrote:
> > Greetings and thanks for your input..
> > 
> > I'm still stuck.. I found the bootdisk  'isp16', the name of the
> > soundcard/cd-interface, and it found the drive at the proper port:
> > 0x340.. But it still wont mount the drive either as /dev/sjcd or when
> > I 'mknod /dev/isp16 b 0 6', which is "supposed" to be the major/minor
> > number of the device.. I, honestly, question that Major of zero, but
> > that's what I found in the src code, IIRC..
> 
> Major 0?
> Maybe these have mislead you..from isp16.c source:
> 
> #define ISP16_VERSION_MAJOR 0
> #define ISP16_VERSION_MINOR 6
>               ^^^^^^^
> Wrong ones i guess :)
> 

		Probably not but I seem to be comparing oranges to
apples - whatever.. <grin>


> >From include/linux/major.h:
> 
> #define SANYO_CDROM_MAJOR 18
> 

		Major 18 proper for the drive itself but you hit the
nail on the head - see later...


> > > > 7.1 distribution and I can't get "setup" to find the CDR.. The report
> > > > is always: "SJCD: Sanyo CDR-H94A Cdrom driver version 1.7
> > > >             SJCD: Resetting............ reset failed, no drive found."
> > 
> > 		For some reason the drive doesn't want to make up
> > it's mind whether it's a /dev/sjcd or /dev/isp16.. No amount of
> > parameter entries seem to solve the problem /or/ to force the kernel
> > to be able to mount the drive.. The boot image 'isp16' finds the
> > drive all right at port 0x340,0,0-Sanyo, but I can't get it mounted
> 
> AFAIK, isp16.c enables the cdrom port on your soundblaster card, and
> sjcd.c manages the drive(i could be dead wrong here).
> /dev/sjcd (should have major 18) is the right device i guess..
> 
> Do you have the drivers in the main kernel image or as modules? If they
> are in modules, try loading the isp16.o first, then sjcd.o..

		This is where I went astray - not having, or finding a
clue as to what was really needed... I installed Basic Linux 2.02 on
the machine and then loaded isp16.o _and_ sjcd.o and the drive came
to life, except for one comment: "bug: Kernel timer added twice at
c28024d5" However, it was late but I was able to, then, talk to the
drive OK.. I have enough ammunition now to start from scratch again,
to attempt an original install.. I may find it easier to fit an ATAPI
IDE drive to the machine temporarily, just for the install, and then
re-fit the Sanyo for use - loading the two modules..



> BTW, when asking for help on mail list, always leave the mail-list
> address in Cc field..might get some more brainpower 8)

		OK will do. I apologize, but I thought there would be
very little interest in such old and "obsolete" hardware.. The drive
is only 2X - puny by what I see vended today.. <grin>

		Thanks again,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
