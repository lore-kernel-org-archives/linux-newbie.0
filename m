From: John Kelly (bilbo) <bilbo@waitrose.com>
Subject: Re: left handed mouse
Date: Sat, 7 Jun 2003 13:57:51 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030607125408.HGKH11246.mta03-svc.ntlworld.com@there>
References: <5.1.0.14.1.20030606075801.01fbfb90@celine> <005001c32c89$9fc0f2f0$ed64a8c0@descartes>
Reply-To: bilbo@waitrose.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <005001c32c89$9fc0f2f0$ed64a8c0@descartes>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "John T. Williams" <jowillia@vt.edu>, linux-newbie@vger.kernel.org

On Saturday 07 June 2003 1:12 am, John T. Williams wrote:
> my father (who I just got to start using linux) asked me how to cause the
> mouse buttons to be inverted.
> And I had no idea, I've been searching through X-configuration guides and
> haven't found anything, does anyone have any ideas?
>


I don't know if this really helps but I read in  the Red Hat docs:
==================================================================
Tip
To change your mouse configuration after you have completed the installation 
of Red Hat Linux,become root; then use the /usr/sbin/mouseconfig command from 
a shell prompt.
To configure your mouse to work as a left-handed mouse, reset the order of 
the mouse buttons. To do this, after you have booted your Red Hat Linux 
system, type gpm -B 321 at the shell prompt. You can
also change this setting in GNOME by going to the main menu and selecting 
Programs => Settings=> Peripherals => Mouse. In KDE, select Preferences => 
Peripherals => Mouse. 
===================================================================
regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
