From: Andrew <ald2@arrakis.es>
Subject: Re: ethernet nic install
Date: Wed, 04 Aug 2004 18:49:40 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411113A4.9020800@arrakis.es>
References: <410F692C.3070303@arrakis.es> <200408032120.37112.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200408032120.37112.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

pa3gcu wrote:
> 
> Firstly, you said "486" 

Sorry. I was suffering from heatstroke. It's a very ancient pentium 60Mhz.

> Now secondly, why i ask are you using the 8139cp driver when your type of card 
> needs the 8139too driver.?????

Good question. I'm not. I have only used the 8139too driver and can't 
figure out why there is any reference at all to the 8139cp (I didn't 
even know it existed and didn't notice it until after my first post).

> 
> I would place into /etc/rc.d/rc.netdevice the following;
> 
> /sbin/modprobe 8139too

So far I have loaded it manually, from /etc.rc.d/rc.modules and with 
'netconfig', which detects the nic if I remove the other one (see below).

> Another thing here is that you state "eth1" is the interface concerned, that 
> means its the second ethernet device in your system, do you have a working 
> eth0 device and if so what is it and is it working.???

Yes, 3c509 isapnp and yes.

I shall have another go at the BIOS (It is the strangest I have ever 
seen) and maybe come back to you.

Thanks, anyway,

Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
