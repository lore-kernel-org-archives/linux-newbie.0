From: james miller <jamtat@mailandnews.com>
Subject: XFree86 crash log
Date: Tue, 12 Nov 2002 21:23:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD5D41B@mailandnews.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Hello all:

I posted to the list some time ago about problems I was having getting X 
running. That was on another computer, and I never managed to resolve the 
problems. Now, I'm confronting the problem again and it's high time I figured 
out what I'm doing wrong and fix it. And, I stand to learn alot about X and 
the way the gui works under Linux in the process - knowing, at the moment, 
virtually nothing.

Right now, I am trying to install a minimal Slackware (8.1) version via a 
routine developed by the creator of Basiclinux. The minimal install does not 
have X installed or configured, but it does give one access to the Slackware 
pkgtool and, via this, to the possibility for installing whatever packages one 
wishes from the Slackware CD. I used this routine to install XFree86 4.2. So 
far as I could tell, I installed all necessary packages: I may well have 
missed something important and am simply not sure if my problem may not come 
down to something like this.

In any case, after installing XFree86 and associated packages (e.g., fonts), I 
ran xf86config from the command line. I selected refresh rates that my monitor 
seems likely to support (it is a 14" Epson extended vga) and my video card (S3 
Trio 64v+). When I try to run "startx," the X server crashes with the 
following report dumped to /var/log/:

##############################################################
_XSERVTransSocketOpen: socket() failed for tcp
_XSERVTransSocketOpenCOTSServer: Unable to open socket for tcp
_XSERVTransOpen: transport open failed for tcp/darkstar:0
_XSERVTransMakeAllCOTSServerListeners: failed to open listener for tcp
_XSERVTransSocketOpen: socket() failed for local
_XSERVTransSocketOpenCOTSServer: Unable to open socket for local
_XSERVTransOpen: transport open failed for local/darkstar:0
_XSERVTransMakeAllCOTSServerListeners: failed to open listener for local

Fatal server error:
Cannot establish any listening sockets - Make sure an X server isn't already 
running

When reporting a problem related to a server crash, please send
the full server output, not just the last messages.
This can be found in the log file "/var/log/XFree86.0.log".
###########################################################

Can someone help point me in the right direction for resolving this problem 
and getting a working X install?

Thanks, James

PS This is an old test computer - 486 DX4 100 with 40MB RAM and 1.3 GB HD.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
