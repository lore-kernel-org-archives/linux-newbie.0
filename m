From: Ray Olszewski <ray@comarre.com>
Subject: Re: XFree86 crash log
Date: Tue, 12 Nov 2002 19:02:15 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021112183621.02114990@celine>
References: <3DD5D41B@mailandnews.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DD5D41B@mailandnews.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

I have not seen this particular error before. And lik many of us here, I am 
not a user of BasicLinux, so the help I can offer is limited.

1. Is this the complete error output (that is, does it match what is in 
"/var/log/XFree86.0.log")? If not, please send complete output, as the 
message tells you to.

2. The sockets the message refers to are probably the local Unix sockets 
that the server uses to accept connections from clients. What does "netstat 
-an" report? Are there listings that resemble this one:

         unix  2      [ ACC 
]     STREAM     LISTENING     427    /tmp/.X11-unix/X0

3. Does the /tmp directory exist (this is a long shot, as it is very 
standard as a part of Linux systems)? Is it mode 777?

4. Does your kernel support Unix domain sockets? If you compiled your own, 
it is an option under "Networking" in the "make menuconfig" method of 
configuring, for 2.4.x kernels. If you are using any stock Slackware 
kernel, it probably supports Unix sockets. If you are using one from 
BasicLinux ... well, the BasicLinux home page says it supports X installs, 
so I suppose the kernel includes what is needed (but I have no way actually 
to know).

5. BasicLinux has a page that lists the Slackware packages needed to run X. 
Its URL is

         http://www.ibiblio.org/pub/linux/distributions/baslinux/bas-x.html

Did you include everything this page says to install?

That's about all I can think of without more info. Hope it helps.

At 09:23 PM 11/12/02 -0500, james miller wrote:
>Hello all:
>
>I posted to the list some time ago about problems I was having getting X
>running. That was on another computer, and I never managed to resolve the
>problems. Now, I'm confronting the problem again and it's high time I figured
>out what I'm doing wrong and fix it. And, I stand to learn alot about X and
>the way the gui works under Linux in the process - knowing, at the moment,
>virtually nothing.
>
>Right now, I am trying to install a minimal Slackware (8.1) version via a
>routine developed by the creator of Basiclinux. The minimal install does not
>have X installed or configured, but it does give one access to the Slackware
>pkgtool and, via this, to the possibility for installing whatever packages 
>one
>wishes from the Slackware CD. I used this routine to install XFree86 4.2. So
>far as I could tell, I installed all necessary packages: I may well have
>missed something important and am simply not sure if my problem may not come
>down to something like this.
>
>In any case, after installing XFree86 and associated packages (e.g., 
>fonts), I
>ran xf86config from the command line. I selected refresh rates that my 
>monitor
>seems likely to support (it is a 14" Epson extended vga) and my video card 
>(S3
>Trio 64v+). When I try to run "startx," the X server crashes with the
>following report dumped to /var/log/:
>
>##############################################################
>_XSERVTransSocketOpen: socket() failed for tcp
>_XSERVTransSocketOpenCOTSServer: Unable to open socket for tcp
>_XSERVTransOpen: transport open failed for tcp/darkstar:0
>_XSERVTransMakeAllCOTSServerListeners: failed to open listener for tcp
>_XSERVTransSocketOpen: socket() failed for local
>_XSERVTransSocketOpenCOTSServer: Unable to open socket for local
>_XSERVTransOpen: transport open failed for local/darkstar:0
>_XSERVTransMakeAllCOTSServerListeners: failed to open listener for local
>
>Fatal server error:
>Cannot establish any listening sockets - Make sure an X server isn't already
>running
>
>When reporting a problem related to a server crash, please send
>the full server output, not just the last messages.
>This can be found in the log file "/var/log/XFree86.0.log".
>###########################################################
>
>Can someone help point me in the right direction for resolving this problem
>and getting a working X install?
>
>Thanks, James
>
>PS This is an old test computer - 486 DX4 100 with 40MB RAM and 1.3 GB HD.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
