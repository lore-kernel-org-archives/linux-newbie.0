From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slackware 8.1.01 Install????
Date: Thu, 5 Jun 2003 09:30:27 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030605093027.A233@lnx2.w8mch.ampr.org>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200305312214.21667.pa3gcu@zeelandnet.nl> <20030603164428.A161@lnx2.w8mch.ampr.org> <200306042101.56986.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200306042101.56986.pa3gcu@zeelandnet.nl>; from pa3gcu@zeelandnet.nl on Wed, Jun 04, 2003 at 09:01:56PM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-04, pa3gcu wrote:
> 
> Something wrong here, my slackware-8.1 cdrom obtained from a mirror site of 
> slackware.com so its a slackware disk period.
> 
> I booted my machine a 650Mhz PIII machine with slack 8.0 bare.i and color.gz 
> disks, please NOTE, slack 8.0 boot disks.
> After doing the normal thing, fdisk(ing) typing 'setup' i get the dialog 
> install program just like one expects.
> 
> I can then add swap, choose a partition to install on and let setup 
> 'automaticly' mount my cdrom located on /dev/hdc.
> It gets mounted in /var/log/mount "thats it" no slackware directory to be 
> seen, AFAIK its always been that way.

	OK - that's _exactly_ what I've been doing on two machines,
one with an IDE CD the other with a SCSI CD.. Both report it can't
read the CD.. Mounting the same CD on either machine I can read it
perfectly.. I'm presuming the bare.i you used is from the 2.4.5
directory, although I've tried both that one plus the one in the
2.2.19 directory, same problem.. The problem follows the physical CD
even though it does install from a machine with an IDE CD drive,
booting from the same CD..



> What i ask is the following, if you mount the CD on another running linux 
> machine, what is the dir structrue after the mount point, you should see;
> "slackware" period, in otherwords if you mount the cdrom under /mnt you should 
> see;
> /mnt/(a lot of files and directorys) and one called slackware contianing dir's
> a, ap, d, e, so on and so forth.

	I can mount the CD on _any_ of my machines - cd to the
slackware directory and view, copy, do anything I want with all the
'letter' directories.. Everything 'normal' there..
 


> Another quiestion is what happens if you give a path to "setup" and mount the 
> cdrom manually. ??

	I've tried that but, previously, during the setup routine
I've checked each time and the cd drive is mounted properly on
/var/log/mount, as it should be - but down the line it still can't
see the slackware directory. Moving all those files to the HD in a
/slakware directory - same thing..



> If all esle fails i could even send you a copy of my cdrom per POST, but i 
> dont really think that is nessasary at all, i have a small inclination you 
> are doing something fundementally wrong.

	That's for sure, but I've pestered you and Chuck entirely too
much with this and I'm sure the List is bored to tears.. As of now I
_can_ install Slack8.1 with an IDE CD, bootable, machine, and that's
IT.. Since I read the big box vendors are starting to eliminate the
floppies from their boxes - maybe that's the only way to go in the
future, eh? HI.. I'm a stubborn tenacious Scot but there has to be
closure somewhere along the line.. Life's too short... <grin>

	APPRECIATE!!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
