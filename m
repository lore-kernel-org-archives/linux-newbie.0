From: ichi@ihug.co.nz
Subject: Re: more X problems
Date: Thu, 14 Nov 2002 16:49:28 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD3D418.139760AD@ihug.co.nz>
References: <Pine.LNX.4.44.0211132030330.21708-100000@localhost.localdomain> <3DD3CE1D.3CC4333A@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

In an earlier message I wrote:
> 
> However, I also found (elsewhere) that the framebuffer (fb)
> requires VESA 2.0.  It does not work with VESA 1.2 (which
> is what the Trio V64+ is).  What effect (if any) this has
> on XFree 4.2.0, I do not know.

The follow passage from the HOWTO in Slackware 8.1:
--------------------------------------------------------------
Configuring X can be a complex task.  The reason for this 
is the vast numbers of video cards available for the PC 
architecture, most of which use different programming 
interfaces.  Luckily, most cards today support basic video 
standards known as VESA, and if your card is among them you'll
be able to start X using the "startx" command right out of 
the box.
--------------------------------------------------------------

I deduce from this that it comes pre-configured for the
framebuffer.  So, if you have a VESA (2.0) video card,
you simply type 'startx' without the need to configure.
The HOWTO continues:
--------------------------------------------------------
If this doesn't work with your card, then you'll need to 
reconfigure X.  To configure X, you'll need to make an 
/etc/XF86Config file.  It's a very complex configuration 
file, but fortunately there are several programs to help 
create one for you.  We'll mention a few of them here:
------------
xfree86setup
------------
This is a simple menu driven frontend that's similar in 
feel to the Slackware installer.  It simply tells the X 
server to take a look at the card, and then set up the 
best initial configuration file it can make based on the 
information it gathers.  The generated /etc/X11/XF86Config
file should be a good starting point for most systems (and 
should work without modification).
----------------------------------------------------------

Questions to James:  Have you tried xfree86setup?
                     If so, what happened?


Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
