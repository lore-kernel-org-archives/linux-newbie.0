From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: LI -lilo booting problem
Date: Fri, 26 Jul 2002 17:19:55 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D41BCFB.390F2750@gelm.net>
References: <3D36DDA3.FA0F073C@gmx.net> <02072506225706.04469@unix.pa3gcu> <3D406BBB.E208E07B@gelm.net> <02072606105100.00370@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, Ray, Richard, & Ramzez:

 I use
/usr/src/linux/# make install
 and
# lilo
 (/sbin/lilo ?) to try to install a bootable system.

Thanks.  I found the mention of adding lba32
to lilo.conf, although README.common.problems
does NOT show the syntax of the line.  :-|

 However, I'll plug 'lba32' & 'lilo' into google
or whatever and see if I can find an example.

 I can install Slackware8.0, compile a new kernel,
and boot from floppies, either lilo or bzdisk,
yet I cannot boot from either of two hard drives.
:-|
Here is the partition structure of the last two
HDs that I've tried to boot. 

Device	Boot	Start	End	Blocks	Id	System
/dev/hda1 *	1	240    1927768	83	Linux system
/dev/hda2	241	256	128520	82	Linux swap
/dev/hda3	257	2491 179526378	83	Linux system

I tried this one in Primary master also:

Device	Boot	Start	End	Blocks	Id	System
/dev/hda1 *	1	128    1028128	83	Linux system
/dev/hda2	129	131	 24097	82	Linux swap
/dev/hda3	132    1048    7365802	83	Linux system

In all cases(2) system was:

(1)	/dev/hda1 mounted as /
	/dev/hda3 mounted as /usr

(2)	/dev/hda1 mounted as /
	/dev/hda3 mounted as /share

 So, / (/boot) was always within the first 1024 cylinders.
:-|

I'm off to find "lba32".

Thanks again, Chuck


pa3gcu wrote:
> 
> On Thursday 25 July 2002 21:20, Chuck Gelm wrote:
> > Howdy, Y'all:
> >
> >  Where can I find help with 'lilo'.
> 
> /usr/doc/lilo-21.7.5 (slackware-8.0)
> 
> > When I try to boot from hard disk, I get:
> >
> > LI
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
