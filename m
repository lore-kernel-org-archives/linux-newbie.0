From: Beolach <beolach@comcast.net>
Subject: Re: Compiled new kernel, Gnome not working
Date: Mon, 22 Dec 2003 21:39:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FE7C711.6050408@comcast.net>
References: <3FE30ACA.6080901@vip.cybercity.dk> <3FE419E6.3090203@comcast.net> <3FE6E4DD.4030402@vip.cybercity.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FE6E4DD.4030402@vip.cybercity.dk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Flemming Greve Skovengaard wrote:
> No, I don't have frame buffer support and I have a ATI Radeon 8500 graphics
> card. The only solution that comes to mind, and don't hade me if it is 
> stupid,
> is that I have to re-compile X, Gnome or both with the new kernel.
> 

I would guess that you should not have to re-compile X or Gnome.  If you
have an ATI card, I don't have any personal experience with potential
problems, but here's something else (you might already have done) I
thought might be a cause of your current problem.  Check if your kernel
has the ATI chipset support compiled in with the command

	zgrep CONFIG_AGP_ATI /proc/config.gz

or else (if /proc/config.gz doesn't exist)

	grep CONFIG_AGP_ATI .config

in your 2.6.0 source directory.

Also check for CONFIG_DRM & CONFIG_DRM_RADEON in the same way.  All of
these options are required for X to work with hardware acceleration of
an ATI Radeon card.

Wish you luck,
Conway S. Smith

OT P.S.
The /proc/config.gz file is a new feature of the 2.6 kernels that I
think is a great idea.  It shows the kernel config file that was used
to compile the currently running kernel.  But it is optional, and may
not exist on all systems.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
