From: Ray Olszewski <ray@comarre.com>
Subject: Re: ftp issues
Date: Thu, 14 Nov 2002 10:57:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021114103829.020c8680@celine>
References: <92091C60D5E2B74CB77C1FDB84F5FA76EA61@s99mail02.okdhs.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <92091C60D5E2B74CB77C1FDB84F5FA76EA61@s99mail02.okdhs.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This report is far to little to go on.

First, give us the background.

Where is the ftp server? Why do you need to connect to it in passive mode? 
What OS and ftp server does the remote server run?

At the client end, what OS and ftp client? As someone else also asked, is 
client-side disk space an issue? (I doubt this is the problem myself.)

What network is in between them (a LAN? the Internet? a VPN? a PPPoE or 
DHCP external address that changes often?)  Any NAT'ing or other 
routing/firewalling involved? Some quick arithmetic seems to say that the 
transfer is taking place at about 6 Mbps (bits, not Bytes), implying a slow 
Ethernet, not the Internet (consistent with the subnet-10 private address 
reported in the passive-mode transfer ... but then *why* passive mode???).

Do other ftp transfers from this server to this client run smoothly? If 
yes, are any of them as big as this one (1 GB)?

Second, do the logs on either end tell you anything informative? 
Especially, does the remote end log anything connected to the "421" message 
it sends to the client end?

Third, because ftp clients update the screen somewhat dynamically, quoting 
a static printout of the screen is less informative than with most 
applications. Is there anything significant about the real-time operation 
of the transfer that you see when doing it, but that is not apparent in the 
material you quoted below?

At 11:23 AM 11/14/02 -0600, Little, Chris wrote:
>trying to ftp an oracle export.  this happens
>
>ftp> get expKIDSaa.20021110.dmp
>local: expKIDSaa.20021110.dmp remote: expKIDSaa.20021110.dmp
>227 Entering Passive Mode (10,5,20,30,18,180)
>150 Opening BINARY mode data connection for expKIDSaa.20021110.dmp
>(1048576000 bytes).
>   6% |*****
>| 63560 KB  775.22 KB/s    20:38 ETA
>ftp: expKIDSaa.20021110.dmp: short write
>   6% |*****
>| 64124 KB  775.17 KB/s    20:38 ETA
>421 Service not available, remote server has closed connection.
>65663024 bytes received in 01:22 (774.66 KB/s)
>ftp: No control connection for command.
>ftp>




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
