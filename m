From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Mon, 25 Nov 2002 16:53:04 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211252153.gAPLr4904660@hartford-hwp.com>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net> <200211242237.gAOMbjD02367@hartford-hwp.com> <3DE16550.FD5B402E@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE16550.FD5B402E@gelm.net> (message from Chuck Gelm on Sun, 24
	Nov 2002 18:48:32 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org


    To remove the IPADDRESS from eth0, do
   ifconfig eth0 down
   ifconfig eth0 0.0.0.0 up

Yes, I did get rid of it. 

   > > Who is running Red Hat 8.0 and Roaring Penguin?
   > 
   > 15% of all linux users? ;-)

   Naw, not how many or percentile, but who, specifically,
   can help us with a replica of your system.  ;-)

My feeble attempt at humor.

   > With eth0 up and running, and having defined the inteface property in
   > network configuration, I then proceed to configure Roaring Penguin.
   > 
   > Before I do I run adsl-status and am told, naturally, that there's no
   > /etc/ppp/pppoe.conf file. I then proceed to configure Roaring Penguin
   > (I'm comfortable with that), and at the end save the
   > configuration. However, no /etc/ppp/pppoe.conf file shows up.

   locate pppoe.conf
    on my system reports:
   /etc/ppp/pppoe.conf
   /usr/local/rp-pppoe-3.5/configs/pppoe.conf

    I think that 'adsl-setup' should have created a
   'pppoe.conf' file.  Where it was placed, I'm not sure.

This turned out very interesting. Despite the message I quote, roaring
penguin under RH8.0 no longer stgores its configuration in
/etc/pppoe.conf. I know it stores info becasue when I rerun adsl-setup
I see it, but there's now no pppoe.conf file.

    Give Ray what he asked for. 
     "uname -a", "ifconfig -a", & "netstat -nr".  

I will when I can. switching hard disks when there's a bunch strung on
three different scsi channels is a pain.  So I have to leap in and out
fairly quickly. I'll get the info and pass it along asap.

    I've edited some IP addresses.  Here are mine:

Thanks. Info appreciated. I'll compare at this end as soon as I can.

And here is my pppoe.conf for your perusal:

   DNS1=
   DNS2= 000.000.000.000 ;-)

What's this? I have some onfiburation in
/etc/sysconfig/network-scripts/ifcfg.conf. It is somewwhats like your
own. But you have a much bigger ppp0e timeout value, and I may try
that because I'm begginng to seuspec a timing problem.

Haines 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
