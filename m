From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: ipchains && kernel-2.4.x
Date: Wed, 24 Apr 2002 05:42:52 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02042405425201.00216@unix.pa3gcu>
References: <F182IyDPxcgiKMXNaGf0001b276@hotmail.com> <02042218444504.00604@unix.pa3gcu> <3CC6030E.8A74B4FD@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CC6030E.8A74B4FD@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Wednesday 24 April 2002 00:57, Chuck Gelm wrote:
>  I would like to upgrade from kernel-2.2.20 to 2.4.18,
> but I don't know how to make 2.4.x use ipchains instead
> of iptables.  I'm using Roaring Penguin v3.3 (PPPOE) and
> it is set up to use ipchains.  I cannot figure how to
> answer "/usr/src/linux#make config"
> to let 2.4.x use ipchains.
>
>  My new 802.11b wireless card needs 2.4.x.
>  My aDSL (pppoe) wants IPCHAINS (2.2.x).
>  I want both!
>
> How do I do it?

Easy, choose the correct option while configuringing you new kernel;
Under;
IP: Netfilter Configuration choose;
CONFIG_IP_NF_COMPAT_IPCHAINS=m
You may wish to choose other possablity's as well, its up to you.

Upon starting your new kernel you will need to insmod or modprobe ipchains.o
I belive you use slackware on one of your machines, add a line in 
/etc/rc.d/rc.modules for ipchains, providing of course you use 
/etc/rc.d/rc.modules.
If not you will need to modprobe ipchains before you bring up your interfaces.

>
> Many thanks,
> Chuck

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
