From: James Miller <jamtat@mailandnews.com>
Subject: RE: XFree86 crash log
Date: Tue, 12 Nov 2002 23:04:34 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211122256450.21708-100000@localhost.localdomain>
References: <3DD27DBE.4BA48F55@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DD27DBE.4BA48F55@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "ichi@ihug.co.nz" <ichi@ihug.co.nz>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Ray:

I'm not using Basiclinux per se, but what, as I understand it, is 
something that might qualify as a beta for the next release of Basiclinux. 
It's pretty much just a straightforward, highly trimmed Slack 8.1 install. 
Steven, who answers below, seems to have put his finger on the issue: I am 
using a stock Slack 8.1 kernel, but it's the lowmem kernel, as Steven 
mentions. As he points out, it probably doesn't support sockets. There was 
a recommendation to use the more standard kernel if one does not have 
really low memory (< 8MB) once the install was complete. I copied the 
standard kernel from bare.i to the boot partition, but could not get it to 
boot (would just keep rebooting, never getting to the Linux partition). It 
looks like I'm getting into some issues here that are peculair to the 
system I'm trying to use, so I'd probably better direct further inquiries 
to the fashioner of this modified Slack 8.1 install.

Thanks, James

On 13 Nov 2002, ichi@ihug.co.nz wrote:

> james miller wrote:
> > 
> > Right now, I am trying to install a minimal Slackware (8.1) 
> > The minimal install does not have X installed or configured, 
> >
> > Trio 64v+). When I try to run "startx," the X server crashes 
> > with the following report dumped to /var/log/:
> > ##############################################################
> > _XSERVTransSocketOpen: socket() failed for tcp
> 
> Which kernel are you using?  The kernel used to install
> Slackware 8.1 is the lowmem zimage, which (I think) does 
> not support sockets.
> 
> Cheers,
> Steven
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
