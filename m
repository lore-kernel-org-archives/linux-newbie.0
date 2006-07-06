From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux Startup Issues
Date: Thu, 06 Jul 2006 08:27:59 -0700
Message-ID: <44AD2BFF.8020506@comarre.com>
References: <MPBBJDEADLDGEMBFJCPEAEPLGMAA.JesseC@msdlg.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <MPBBJDEADLDGEMBFJCPEAEPLGMAA.JesseC@msdlg.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Jesse Castleberry wrote:
> I am running Debian Linux, and every time I have to reboot, it tries to
> start the Gnome graphical interface.  There's always an error, "I cannot
> start the X server (your graphical interface).  It is likely that it is not
> set up correctly.  Would you like to view the server output to diagnose the
> problem?".  When I say yes, it appears that the problem is "no screens
> found".  I tried editing the XF86Config-4 file, but I have no idea what to
> look for, or what to change.  I also tried running the XFreeConfig program,
> but while testing, it gets to a certain video mode, and freezes up.
> 
> I tried an "apt-get install XFree86", but it tells me that it can't find
> XFree86.
> 
> Any idea what I need to do to get this fixed?

Sorry I did not see this sooner.

If you're getting this message, then the package is already installed, 
but it is not configured correctly for your hardware. To run the script 
that lets you fix this, run (as root):

	dpkg-reconfigure xserver-xfree86

You will still need to know enough about your hardware to answer the 
questions correctly. If you want help with this part, you're going to 
have to tell us about the details of your system ... but "no screens 
found" *often* means that the combinations of resolution (HxW) plus 
color depth (bpp) you've selected are inconsistent with the amount of 
video RAM you have available. If that's what your underlying problem is, 
try choosing 640x480x8bpp and see if that works. If it does, you can 
then try again, moving to more and more demanding settings until you hit 
your memory limit. (But this is only a guess; for real help, you need to 
give us details.)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
