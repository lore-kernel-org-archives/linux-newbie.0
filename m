From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Trying to get GUI'ed
Date: Tue, 29 Oct 2002 06:58:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210291158.g9TBwor04023@hartford-hwp.com>
References: <20021025.133927.134682184.2.lawson_whitney@juno.com> 
	<200210251914.g9PJER508163@hartford-hwp.com>
	<1035803455.28623.76.camel@zebra.vil.ite.mee.com> 
	<200210281635.g9SGZT908476@hartford-hwp.com> <1035823242.2763.35.camel@zebra.vil.ite.mee.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <1035823242.2763.35.camel@zebra.vil.ite.mee.com> (message from
	Paul Furness on 28 Oct 2002 16:40:42 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: paul.furness@vil.ite.mee.com
Cc: linux-newbie@vger.kernel.org

Paul,

Here I sit, almost dead in the water. Confident that I could run emacs
at the command prompt outside X (I'm writing now with emacs-rmail, but
have lost X altogether), I went ahead and installed the two rpm files
and edited my XF86Config-4 file. The result was loss of access to my X
server. I  tried but failed to back out of the driver installation
by reverting to the old config file with its nv driver.

RPM Installation suggested a possibly conflicting MESA or stale nVidia
distribution, but I have neither. libglx.a, etc., files renamed to
xxx...rpmSAVE. I  don't know whether a recovery of my old set up would
require renaming those file to their original names as well as
reverting to the old configuration file.

When I went to start X, I got errors that nvidia had failed to
initialize the NVdriver kernel module. Indeed, running lsmod does not
report it, although I checked with rpm to verify the driver installed
(rpm verifies the NVIDIA_kernel version number). If I tried insmod
nvidia (or nVidia, NVidia, NVdriver, etc.) it says driver not
found. There's nothing that looks like an nvidia driver in
/usr/X11R6/lib/modules/extensions. The /dev files are present, though.

I tried running Xconfigurator. It sees my GeForce3 card, but can't
probe it (it did so originally), probably because of no loaded driver. So
manual configuration of the card fails.

I don't know the exact driver name I should be using, nor am I certain
of where it should be located, and why insmod does not see it. I've no
clue where to begin. I sent the log file off to
xfree86@xfree86.org. Until they reply (if they reply), I'm unable to
do much work.

If you have the patience, I'd like to know the name and location of
the nvidia driver file so that I might verify its presence and perhaps
give insmod a hand. 

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
