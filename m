From: Ray Olszewski <ray@comarre.com>
Subject: Re: Connecting with Hyperterm
Date: Fri, 09 Jan 2004 14:32:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040109142116.01f3fa98@celine>
References: <6CE6A442029B3347890ED9FCA94FAE0701EEAB98@nsxmail.netscout.
 com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0701EEAB98@nsxmail.netscout.
 com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:49 PM 1/9/2004 -0500, Gosselin, Mark wrote:
>HI Guys,
>
>I'm trying to connect using Hyperterm via a serial port to a Linux 
>Enterprise 3.0 server...
>What do I need to do to make sur ethat the Linux box will accept 
>connections through the
>serial ports?? Is there something that needs to be done in /etc/inittab 
>regarding mingetty and/o
>mgetty??? How about mgetty.conf files???
>
>The server is a Dell 2650. My PC with the serail cable connected claims to 
>be connected, but
>I can see no evidence of it on the screen....
>
>Any help would be most appreciated.

I'm guessing that "a Linux Enterprise 3.0 server" is some sort of Red Hat 
system. If it is typical of Linux systems, you need a line in /etc/inittab 
that looks something like this (this is an example taken from a Debian 
system) --

         T1:23:respawn:/sbin/getty -L ttyS1 9600 vt100

You need the right entry for the serial port you are using (ttyS0 or ttyS1, 
on usual systems). The rest of the details will vary depending on which 
*getty program your system actually uses.

Aside from that, you need to make sure

         that the serial port is enabled in the system's BIOS (aside from 
checking the actual BIOS settings, see if "setserial /dev/ttyS1", run as 
root, returns a UART type -- or ttyS0 if you're using that port).
         that your Linux kernel has serial-port support compiled in (check 
dmesg to make sure the serial ports are seen at boot).
         that you are using a crossover cable with whatever handshaking the 
systems expect.
         that Hyperterm itself is working correctly.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
