From: Ray Olszewski <ray@comarre.com>
Subject: Re: Vbox
Date: Fri, 25 Oct 2002 07:55:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021025073755.0218a360@celine>
References: <200210250830.g9P8U0c01961@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210250830.g9P8U0c01961@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux <linux-newbie@vger.kernel.org>

Tough one, Peter, with so little info to work with.

The usual source of respawn problems is an attempt to access a device that 
is not accessable in some way (for example, a serial port that does not 
have handshaking set up properly). Since ttyI5 is not a standard device, 
you might do well to tell us (or check for yourself) both its actual entry 
in /dev and whatever it is supposed to be connected to (some isdn device, I 
imagine) to look for configuration problems. You might also see if the 
"respawn" message is preceded in the logs by any more specific message 
about the process ... such messages usually are.

If neither telnet nor vbox can connect to port 20012, the fist thing to 
check is whether anything is listening on that port. Does vboxd run 
directly as a daemon or through inetd? If the first, is it actually 
running? If the second, is inetd.conf configured proprely? Does either 
vboxd or inetd log anything in connection with these failed attempts?

Beyond those specific thoughts ... the Debian package notes for vbox3 
(which I assume is the same app) mention that it is no longer being 
maintained by its creator, and that opens the door to the possibility of an 
uncorrected bug. So it you post again, you might want to include some 
details about what version (distro) of Linux you are running, what version 
of vbox, and how you got vbox (your distro's packaging system? comipled it 
yourself from source?). Oh, and what your hardware (idsn) setup is.

This URL -- http://www.linuxnetmag.com/en/issue2/m2vbox1.html -- (found in 
2 minutes using Google) has some troubleshooting advice for vboxgetty  and 
vboxd.

At 04:30 PM 10/25/02 +0800, Peter wrote:
>Hi,
>
>on trying to set-up vbox I get the following messages:
>
>on booting:
>INIT: Id "I5" respawning too fast: disabled for 5 minutes
>
>My entry in inittab is:
>I5:2345:respawn:/usr/sbin/vboxgetty -d /dev/ttyI5
>
>with command
>telnet localhost vboxd
>I get:
>Trying 127.0.0.1...
>telnet: connect to address 127.0.0.1: Connection refused
>
>and command vbox gives:
>Connecting to 'localhost:20012'...
>vbox: can't connect to 'localhost:20012
>
>that number 20012 comes from the file /etc/services
>vboxd           20012/tcp                       # voice box system
>vboxd           20012/udp
>
>What could be wrong?
>
>Thanks & regards




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
