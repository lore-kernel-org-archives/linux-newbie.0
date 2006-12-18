From: Chuck Gelm <chuck@gelm.net>
Subject: Re: Internet Connection in Zenwalk
Date: Mon, 18 Dec 2006 07:55:36 -0500
Message-ID: <45868FC8.7020601@gelm.net>
References: <200612170209.kBH29nqg002093@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200612170209.kBH29nqg002093@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: heisspf@skyinet.net
Cc: linux <linux-newbie@vger.kernel.org>

Peter wrote:
> Hi,
>
> Recently I had a look at Zenwalk-4 distro which is slackware based with 
> kernel-2.6.18.1. I kind of like what I see, however, I can't make it connect 
> to the Internet.
>
> On booting I get
>
> Starting the Network
> /etc/rc.d/rc.inet1:  /sbin/ifconfig lo 127.0.0.1
> /etc/rc.d/rc.inet1:  /sbin/route add -net 127.0.0.0 netmask 255.0.0.0 lo
> /etc/rc.d/rc.inet1:  /sbin/dhcpcd -d -t 60  eth0
> dhcpcd: MAC address = 00:08:a1:9c:43:3a
> dhcpcd[2211]: broadcasting DHCP_DISCOVER
>
> dhcpcd[2211]: timed out waiting for a valid DHCP server response
>
> Could it be a missing module?
>   
Hi, Peter:

 I use Slackware.  Slackware is BSD'ish in its filenames and locations.
I see a 'tulip' driver installed so you probably have a network card.
I'd like to see the output of 'ifconfig -a' to make sure that an 'eth'
device exists.  Please also include physical information about your
internet connection. You gave no information about your internet
connection, only that you are trying to obtain one. :-|

 Do you have a cable or DSL modem? 
( Why are you expecting to find a DHCP server on the other end of
  your ethernet cable? ;-)
Perhaps you have a DSL modem and you should be running PPPOE
instead of DHCP.
If you have a cable/DSL modem, are their 'internet activity' lamps lit?
Often the last thing to do is to cold power cycle the cable/DSL modem
and then run 'dhcpcd -d eth0'.

'ifconfig -a' to show what network devices are present.
'ifconfig' to show what network devices are configured.


HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
