From: Ray Olszewski <ray@comarre.com>
Subject: RE: Ethernet Questions
Date: Sat, 04 May 2002 12:06:03 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020504190603.00d58438@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: sadunn <sadunn@blue.weeg.uiowa.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

At 01:58 PM 5/4/02 -0500, sadunn wrote:
[...]
>I got some interesting information from doing this. dmesg gave me only one 
>mention of eth0, which went:
>
>eth0: Digital DC21040 Tulip rev 35 at 0x1080, 00:00:C0:1C:0D:C7, IRQ 9
>
>I assume this meant the interface was up, since this is just the information I 
>received from ifconfig -a. However, when I checked var/log, I found this, 
>repeated in three different places, all during an attempt to startup something 
>called inet:
>
>localhost: can't find a dhcpcd client, sbin/pump or sbin/dhcpcd
>localhost network: bringing up device eth0 failed
>
>I then went to /sbin, and there was nothing about pump or dhcpcd there. I 
>searched around, and can't find them anywhere. I looked to see if during my 
>install I didn't install the package(s) they were contained within, but I 
>didn't find anything about them there, either.
[...]

OK. First thing to clarify is terminology. The first eth0 line you found
confirms that the interface *exists*. For it to be "up", though, it needs an
IP address assigned to it. 

Your system is trying to assign an IP address via DHCP -- that's what the
log lines you woute report -- but it can't find a DHCP application to run to
do the work. Apparently you didn't install them when you set up the system.

At this point, someone familiar with the RPM packages can easily help you,
but people like me (people who use non-RPM-based distros like Debian) are
out of the picture. Anyone familiar whth Mandrake should be able to tell you
which *.rpm package(s) you need to load to fix this.



--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
