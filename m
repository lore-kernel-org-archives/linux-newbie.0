From: lawson_whitney@juno.com
Subject: Re: Trying to get GUI'ed
Date: Tue, 29 Oct 2002 22:00:33 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021029.222550.134682184.2.lawson_whitney@juno.com>
References: <200210291158.g9TBwor04023@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210291158.g9TBwor04023@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: paul.furness@vil.ite.mee.com, linux-newbie@vger.kernel.org

On Tue, 29 Oct 2002, Haines Brown wrote:

> Paul,
>
> Here I sit, almost dead in the water. Confident that I could run emacs
> at the command prompt outside X (I'm writing now with emacs-rmail, but
> have lost X altogether), I went ahead and installed the two rpm files
> and edited my XF86Config-4 file. The result was loss of access to my X
> server. I  tried but failed to back out of the driver installation
> by reverting to the old config file with its nv driver.
>
> RPM Installation suggested a possibly conflicting MESA or stale nVidia
> distribution, but I have neither. libglx.a, etc., files renamed to
> xxx...rpmSAVE. I  don't know whether a recovery of my old set up would
> require renaming those file to their original names as well as
> reverting to the old configuration file.

Possibly.  Libraries are usually backward-compatible, though.
>
> When I went to start X, I got errors that nvidia had failed to
> initialize the NVdriver kernel module. Indeed, running lsmod does not
> report it, although I checked with rpm to verify the driver installed
> (rpm verifies the NVIDIA_kernel version number). If I tried insmod
> nvidia (or nVidia, NVidia, NVdriver, etc.) it says driver not
> found. There's nothing that looks like an nvidia driver in
> /usr/X11R6/lib/modules/extensions. The /dev files are present, though.

rpm will tell you if you ask, what files are contained in a package:
rpm -ql <package name>
Sorry, I am not familiar with video drivers as kernel modules.  That
might be a feature of X release 4 that I haven't got around to yet.
kernel modules live usually in /lib/modules/`uname -r`
Hmmm, try /usr/X11R6/lib/modules
What is in /usr/X11R6/bin/X ?  That used to be a symbolic link to the X
server.
>
> I tried running Xconfigurator. It sees my GeForce3 card, but can't
> probe it (it did so originally), probably because of no loaded driver. So
> manual configuration of the card fails.
>
> I don't know the exact driver name I should be using, nor am I certain
> of where it should be located, and why insmod does not see it. I've no
> clue where to begin. I sent the log file off to
> xfree86@xfree86.org. Until they reply (if they reply), I'm unable to
> do much work.
>
> If you have the patience, I'd like to know the name and location of
> the nvidia driver file so that I might verify its presence and perhaps
> give insmod a hand.
>
> Haines Brown
> -



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
