From: Chuck Gelm <nc8q@gelm.net>
Subject: Help with Roaring Penguin & Red Hat 8.0?
Date: Mon, 25 Nov 2002 19:55:00 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE2C664.41479620@gelm.net>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com> <3DE16550.FD5B402E@gelm.net> <200211252153.gAPLr4904660@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org



Haines Brown wrote:
<big snip>
> Thanks. Info appreciated. I'll compare at this end as soon as I can.
> 
> And here is my pppoe.conf for your perusal:
> 
>    DNS1=
>    DNS2= 000.000.000.000 ;-)
> 
> What's this? I have some onfiburation in
> /etc/sysconfig/network-scripts/ifcfg.conf. It is somewwhats like your
> own. But you have a much bigger ppp0e timeout value, and I may try
> that because I'm begginng to seuspec a timing problem.

 rp-pppoe may recognize that your system is a different distribution
than mine and places configuration files in different places as
appropriate.  I showed you how I looked for pppoe.conf, but you
didn't show us how you searched for 'pppoe.conf'.  I'm worried
that you only looked in a specific directory. :-|  Maybe your
distribution doesn't even use a file named 'pppoe.conf'! :-|

 Other than adding "adsl-start" to my 'rc.local',
I edited no other files.  The 'install' procedure and
'adsl-setup' is all I did. :-|

 I see that it is difficult for you to view settings whereas
you need to reboot a busy system.  My system ("firewall") is
an old 80486dx33 that I bought a year or so ago for 5 USD. :-)

 I'm still holding on to these concepts:

- RP-PPPOE creates an IPCHAINS ruleset & Red Hat 8.0 uses IPTABLES.
  i.e. You never end up with 'valid' instructions to the kernel
  about handling packets with your DSL modem.

- eth0 should not have an IP address.
  ppp0 gets the IP address.
  Notice that my eth1 device does appear in my 'netstat -nr' report,
  and that my ppp0 device does.

HTH, Chuck
> 
> Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
