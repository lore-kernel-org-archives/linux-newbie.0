From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Sanyo CDR-H94A (non-atapi) Booting???
Date: Thu, 3 Apr 2003 11:17:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030403111724.A234@lnx2.w8mch.ampr.org>
References: <20030328131832.A249@lnx2.w8mch.ampr.org> <20030328214839.GB456@gajba.net> <20030330132929.D206@lnx2.w8mch.ampr.org> <20030330203403.GA1222@gajba.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030330203403.GA1222@gajba.net>; from boris@gajba.net on Sun, Mar 30, 2003 at 10:34:03PM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Boris Bezlaj <boris@gajba.net>
Cc: linux-newbie@vger.kernel.org

Greetings: You were right - I needed two modules.. I found the
easiest was to use the isp16.i boot disk to take care of the sound
card/interface and then during the installation run 'insmod' with
'sjcd.o' on a floppy transferring both to the ramdisk.. Setup didn't
like it, at first, but on the 2nd try - it took.... Success finally.

Appreciate everyones help in kick starting my grey cells.. A big time
sink for an obsolete drive, eh?  Thanks again.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
                Proprietary  Formats  Unacceptable

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
> >From include/linux/major.h:
> 
> #define SANYO_CDROM_MAJOR 18
> 
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
> 
> The last resort is to ask the maintainer or whoever was the last
> patching the driver(s).
> 
> BTW, when asking for help on mail list, always leave the mail-list
> address in Cc field..might get some more brainpower 8)
> 
> Best luck.
> -- 
> 
>   Boris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
