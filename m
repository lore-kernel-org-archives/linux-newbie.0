From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Sun, 24 Nov 2002 17:37:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211242237.gAOMbjD02367@hartford-hwp.com>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com> <3DE1208F.F3D58506@gelm.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <3DE1208F.F3D58506@gelm.net> (message from Chuck Gelm on Sun, 24
	Nov 2002 13:55:11 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org, brownh@hartford-hwp.com

Chuck,

> Date: Sun, 24 Nov 2002 13:55:11 -0500
> From: Chuck Gelm <nc8q@gelm.net>
> X-Accept-Language: en
> CC: linux-newbie@hartford-hwp.com
> 
>  Please address your linux-newbie messages to
> linux-newbie@vger.kernel.org and not to
> linux-newbie@hartford-hwp.com and not to nc8q@gelm.net without
> linux-newbie@vger.kernel.org
> 
>  as I cannot 'reply' to linux-newbie@vger.kernel.org without adding
>  that address manually & I see no reason to reply to you alone.
> 
>  If you cannot do this, I'll edit to suit. ;-)

Chuck. I quite understand. Somehow a CC: linux-newbie@vger.kernel.org
got in there, and so when I replied, it was reproduced. The header of
this message looks clean, and so it's a kind of test. It goes to you,
and a CC: for the list and back to me.
 
>  Yes, AFAIK, the eth# device that PPPOE is going to use should be
> up.  However, it should not have an IP address.

Yes, the eth0 is up and running. The problem was that the
configuration utility gave me the choice of a static address or DHCP,
and I was unable to enter " ". I can get back to the files themselves,
but right now on the machine I'm using, I have a permanent address for
my machine (192.168.0.1) that is simply ignored when I set up a DSL
connection.

> > Actually, when I run redhat-configuration-network, I see not only
> > eth0, but also ppp0

I simply killed that unwanted ppp0, and it goes better.

> Who is running Red Hat 8.0 and Roaring Penguin?

15% of all linux users? ;-)

With eth0 up and running, and having defined the inteface property in
network configuration, I then proceed to configure Roaring Penguin.

Before I do I run adsl-status and am told, naturally, that there's no
/etc/ppp/pppoe.conf file. I then proceed to configure Roaring Penguin
(I'm comfortable with that), and at the end save the
configuration. However, no /etc/ppp/pppoe.conf file shows up.

Then I start adsl and get: ipchains: protocol not available. My first
reaction was that iptables were blocking ppp, but now I don't think
so. Nevertheless, when I run

      ipchains -L ...  REJECT tcp anysource anydest tcp
      flags:SYN,RSG,AC...

However, I can read the error above to mean that ipchains is telling
me there's no ppp protocol running. That, with the absense of a
configuraion file, suggests that Roaring Penguin failed to configure
pppoe. I did all this as root, but I'll have to check permissions,
etc. to make sure the configuration file can be created. Also, I can
try importing my old config file, which should be the same.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
