From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 11:34:04 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030610113404.A157@lnx2.w8mch.ampr.org>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200306081036.08989.pa3gcu@zeelandnet.nl>; from pa3gcu@zeelandnet.nl on Sun, Jun 08, 2003 at 10:36:08AM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-08, pa3gcu wrote:
> On Saturday 07 June 2003 16:47, Hal MacArgle wrote:
> > On 06-05, pa3gcu wrote:
> > > So it sounds like you can mount the CD manually during install, is that
> > > correct,?? If so then you MUST be able to use it to install period, what
> > > you may be doing is FORGETTING to ""UNMOUNT"" it before proceeding with
> > > the install, i say that be cause i can get the same error message you
> > > mention if i mount the cdrom by hand in a console and then proceed with
> > > "setup" to install slackware, it does not then work, one needs to UNMOUNT
> > > the cdrom first....
> > >
> > > Is that your problem.?????
> >
> > 	Not sure I understand the above completely.. Slackware has a
> > source selection including sth like "Install from a mounted
> > directory." I tried that by creating an empty directory, /slack, and
> > then mounting the CD drive.. So that means, to me, that setup should
> > find the files at /slack/slackware.. I tried all combinations to no
> > avail, including trailing "/"s...
> 
> Yes it does allow what you say however it will NOT work as you think or want 
> it to for the following reason.
> 
> You mount your cdrom in /slack which you created, your cdrom has a directory 
> called slackware containing the install sets, a, ap, etc etc etc.
> However the setup program does NOT look in slackware, it looks in slack and 
> will not find the install sets. I burnt a cdrom with the contents of the 
> slackware directory in the root of the cdrom, however this did not work 
> either.
> 
> One possable reason for it not working is that you are not mounting a 
> predefined "directory" you mount another "device" in that directory, my cdrom 
> led does not even flikker at all when setup looks for the "a" series 
> indicating that it does not find the cdrom mounted in the given directory at 
> all.
> 
> So as far as i see it, simply let slack detect the cdrom from the setup 
> process, do not mount the cdrom beforehand. If it does not find it you may 
> need to define where setup must look for it.

	OK - I went back to a completly new try using the 8.0
buslogic.s/colour.gz combination:/hda4 as swap and a clean /hda1 as
target. Swap on; quick format; Source Slackware CD-ROM - autoscan
found 2nd scsi cd ok; select 'a' only - report "Installing series
a".. Then the dreaded panel, seen so many times: "MOUNT ERROR -
Please be sure that it is mounted on /var/log/mount/slakware and that
the Slackware disks are found in sub dirs /var/log/mount/slakware
like specified." (Of course on the CD they are in slackware, not
slakware.. With OK I got the # command line again but with several
reports: "/usr/lib/setup/setup: cannot create /mnt/etc fstab:
directory non-existent."

	I checked and /mnt exists but not etc, so I did a mkdir etc
there and went back to setup again.. This time I got the MOUNT ERROR
report again, but not the previous non-existent, and, actually got as
far as making a boot disk, selecting 'make lilo boot disk' but,
noting that the a files were really never installed.. Trying to make
the boot disk fd0 went into netherland and didn't stop running until
I ejected the disk (a no-no to me, normally) Tried whole routine
again making a 'simple' boot disk and it worked but, of course,
reported a Kernel Panic: because there were no files on the drive..

	In summation Richard, notwithstanding all the work you and
others have done with this - Who needs it??? Life is too short..
Apparently 8.1 has more than one messed up directory label, compared
to the previous versions..This version installs OK with an ATAPI-IDE
CD and HD with a BIOS that boots CD's, period.. IMHO. <grin> Since
some vendors are eliminating floppies from their boxes now - I guess
that's the way to go, eh?

APPRECIATE!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
