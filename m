From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Fri, 29 Nov 2002 13:28:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE7B1BE.E7B971AD@gelm.net>
References: <200211291206.gATC6rd28223@hartford-hwp.com> <3DE77DC1.AE1D5026@gelm.net> <200211291737.gATHbhP02431@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>, Linux Newbie <linux-newbie@vger.kernel.org>

I added linux-newbie back into the address field.

Haines Brown wrote:
> 
> Chuck,
> 
> Thanks for your helpful reply. I'll respond to it more fully after
> I've had a chance to visit the RH8.0 machine having the problem.
> 
> I did not include in my report that I originally had a problem getting
> roaring penguin to build a configuration file. Because when I re-ran
> adsl-setup it new my settings (apparently) previously entered, I
> assumed that the configuration was stored elsewhere even though there
> was no longer a /etc/ppp/pppoe.conf file.

 Your previous responses to adsl-setup are stored.
 If adsl-setup never created a configuration file,
 re-running it with the same responses might not create one either.
 :-|
 Was there ever a /etc/ppp/pppoe.conf file?
 
> But I just now visited the roarding penguin site to download a new
> version, and I see that the configuration file remains the same as
> before. So I conclude my rppppoe is broken, did not install properly,
> or there's a permission problem somewhere preventing the creation of
> its configuration file.
> 
> I'll look at the script as you suggest and otherwise snoop around
> roaring penguin.
> 
> Currently, my present (working) system has in its routing table the
> line:
> 
>   192.168.0.0   0.0.0.0   255.255.255.0   U   40   0   0   eth0
> 
> but on my present machine, I gave eth0 a static address because it was
> once part of a LAN. On my other machine, as you point out, there's no
> eth0 line, but what address should it have if it were present on a
> stand-alone machine? 0.0.0.0?
> 
> I think I'll add eth0 to the routing table with that address to see
> what happens. Some of the iptables problems may be resolved once I
> resolve the two problems above. I'll get back to the list after I've
> been able to explored this.

 I think I have said this before, several times before;
the eth# device that connects to the DSL modem should
not have an IP address (when you run adsl-start).

 rp-pppoe will not work if the eth# device already has an IP address.

 ppp0 gets the IP address (from adsl-start).

 The eth# device must be UP and RUNning and have no IP address.

 Suggestion:
 If you have both a DSL modem and a LAN, put another ethernet NIC
in the computer. A few dollars for an old 3c509, NE2000, whatever
card should be do-able.  Then let RedHat have its way with the eth0
device and configure RP-pppoe to use the eth1 device.
;-)
HTH, Chuck

> Haines
> 
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
