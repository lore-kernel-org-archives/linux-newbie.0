From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Mon, 9 Jun 2003 14:49:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306091449.12908.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306081036.08989.pa3gcu@zeelandnet.nl> <3EE45A69.9E6662C5@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE45A69.9E6662C5@gelm.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Monday 09 June 2003 11:59, Chuck Gelm wrote:
> Hal:
>
>  I've created slackware-8.1-iso & slackware-9.0-iso CDROMs.
> I have exhausted attempts to use them as install media
> while booting from a single floppy.

The idea that has been adopted by Slack for booting from a cdrom is very easy 
and AFAIK is going to be keep that way.
Are you saying that your cdrom does not boot the system and/or not find your 
hardware properly.??

The idea is that you place the slack-9.0 disk in the cdrom drive and start the 
system, at the "boot": prompt you type the kernel name of your choise.

Example;

boot: scsi.s

Read the file Slackware-HOWTO in the root of the cdrom paragraph 3.2 to see 
which kernel you need.

I have never tryed to use just one bootdisk, 2 is then minimum i have ever 
used. I have explained howto boot and install 9.0 with slackware-8.0 
floppy's, that how i started my install for slack 9.

>  There ought to be a way to copy files from the CDROM to
> an existing hard drive partition (root file system). Then
> using a single boot floppy (selecting one that matches
> your scsi devices) to start an install.  However, it is
> beyond my knowledge.

One floppy no, 2 maybe.

You can always download the packages needed and place them on your HD.

> I am baffled.

Its all quite easy really.

>
> Regards, Chuck

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
