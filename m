From: Ray Olszewski <ray@comarre.com>
Subject: Re: net detection failure with old kernel
Date: Mon, 15 Dec 2003 13:48:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031215133800.01ff3b00@celine>
References: <Pine.LNX.4.58.0312151450400.603@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312151450400.603@debian-box>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:03 PM 12/15/2003 -0600, James Miller wrote:
>On a Debian install I recently did, I ended up getting a newer kernel to
>replace the 2.2.20 kernel I initially installed on the system.  But the
>old kernel remains on the system, and I can boot from it if I enter
>"LinuxOLD" at the command prompt.  The problem is, when I boot using that
>older kernel, the network doesn't work (it used to work fine prior to
>updating kernels).  The system loads the right driver for the card, but it
>somehow can't get a dhcp offer.  I'm wondering why this is.  Anyone have
>any ideas?  Here's an excerpt from a log file that shows the failed dhcp
>attempt:

The log shows more than an inability to get a DHCP lease. After that fails, 
it tries to use the old lease's IP address and ping the gateway (I assume 
it is the gateway, anyway ... it is the DHCP server, at least). These are 
the relevant lines:

>Mon Dec 15 12:22:17 2003: No DHCPOFFERS received.
>Mon Dec 15 12:22:17 2003: Trying recorded lease 192.168.254.4
>Mon Dec 15 12:22:18 2003: PING 192.168.254.254 (192.168.254.254): 56 data 
>bytes
>Mon Dec 15 12:22:28 2003:
>Mon Dec 15 12:22:28 2003: --- 192.168.254.254 ping statistics ---
>Mon Dec 15 12:22:28 2003: 1 packets transmitted, 0 packets received, 100% 
>packet loss
>Mon Dec 15 12:22:28 2003: bound: renewal in 98438 seconds.


After the system has booted with this kernel, try the following:

         ifconfig -a
         ping 192.168.254.254
         (CTRL-C after about 10 seconds).
         ifconfig -a

Check the packet counts in the 2 ifconfig results. See if the TX count is 
incremented. If not, the pings are not going out of the system. If yes, the 
replies are not arriving. You might also see what the DHCP server is 
logging about all of this, if you can.

This won't tell you the source of the problem, but it will pin the actual 
problem down a bit. As to the source ... I'm assuming that the 2.2.20 
kernel did get a DHCP lease from this server before you switched to 
2.4.something_or_other and that you made no changes to the hardware or the 
BIOS settings after you switched kernels. If those assumptions hold, the 
only thing I can think of that is left is a corrupted NIC driver ... you 
might check timestamps to make sure the module you are loading is the same 
one you used to use.

Sorry I can't suggest anything more specific. Oh, one long shot ... what 
system is acting as a DHCP server here? Is there any chance it has some 
security capability that causes it to notice that a different OS is 
requesting a lease using a known MAC address? (I'm *really* reaching here 
... I've never heard of a DHCP server doing this, but it would be a neat 
anti-spoofing trick if one did.)

[log details deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
