From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Tue, 10 Jun 2003 21:52:42 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306102152.42580.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <20030610113404.A157@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030610113404.A157@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Tuesday 10 June 2003 17:34, Hal MacArgle wrote:

> 	OK - I went back to a completly new try using the 8.0
> buslogic.s/colour.gz combination:/hda4 as swap and a clean /hda1 as
> target. Swap on; quick format; Source Slackware CD-ROM - autoscan
> found 2nd scsi cd ok; select 'a' only - report "Installing series
> a".. Then the dreaded panel, seen so many times: "MOUNT ERROR -
> Please be sure that it is mounted on /var/log/mount/slakware and that
> the Slackware disks are found in sub dirs /var/log/mount/slakware
> like specified." (Of course on the CD they are in slackware, not
> slakware.. With OK I got the # command line again but with several
> reports: "/usr/lib/setup/setup: cannot create /mnt/etc fstab:
> directory non-existent."

Have you tryed thr "scsi.s" disk, buslogic.s is only for the MultiMaster or so 
stated in the doc's from slack-8.0.

As of 8.1 there is no buslogic.s disk its now scsi.s because of known problems 
with buslogic controllers.

>
> 	I checked and /mnt exists but not etc, so I did a mkdir etc
> there and went back to setup again.. This time I got the MOUNT ERROR
> report again, but not the previous non-existent, and, actually got as
> far as making a boot disk, selecting 'make lilo boot disk' but,
> noting that the a files were really never installed.. Trying to make
> the boot disk fd0 went into netherland and didn't stop running until
> I ejected the disk (a no-no to me, normally) Tried whole routine
> again making a 'simple' boot disk and it worked but, of course,
> reported a Kernel Panic: because there were no files on the drive..
>
> 	In summation Richard, notwithstanding all the work you and
> others have done with this - Who needs it??? Life is too short..
> Apparently 8.1 has more than one messed up directory label, compared
> to the previous versions..This version installs OK with an ATAPI-IDE
> CD and HD with a BIOS that boots CD's, period.. IMHO. <grin> Since
> some vendors are eliminating floppies from their boxes now - I guess
> that's the way to go, eh?

I dont quite know what you mean abot messed up directory labels.
I have never noticed anything funny about 8.1..

>
> APPRECIATE!!
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
