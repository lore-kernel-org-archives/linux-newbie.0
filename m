From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: ethernet nic install
Date: Tue, 3 Aug 2004 21:20:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200408032120.37112.pa3gcu@zeelandnet.nl>
References: <410F692C.3070303@arrakis.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <410F692C.3070303@arrakis.es>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

On Tuesday 03 August 2004 12:30, Andrew wrote:
> Hello,
> I am having trouble trying to install an rtl8139 nic on a 486 running
> Slackware 9.0.

Firstly, you said "486" that means your bios needs to be setup in a completly 
different way that presant day BIOS's are, we have today whats called 
plug-and-play, you have an old motherboard which only supports plug-and-pray.
That meaning if you set your BIOS to (if i remember correctly) "user define" 
then i can imagen why you are having so many problems as PCI cards cannot get 
an IRQ because you have set them all aside for ISA cards.

Now secondly, why i ask are you using the 8139cp driver when your type of card 
needs the 8139too driver.?????

If i was you i would setup my BIOS to have at least one IRQ for PCI, that way 
you get automatic allocation of IRQ's for PCI cards, i am convinced that you 
have set your BIOS to something other than what i stated.

I would place into /etc/rc.d/rc.netdevice the following;

/sbin/modprobe 8139too

Another thing here is that you state "eth1" is the interface concerned, that 
means its the second ethernet device in your system, do you have a working 
eth0 device and if so what is it and is it working.???

>  From dmesg:
> 8139too Fast Ethernet driver 0.9.26
> PCI: Enabling device 00:03.0 (0000 -> 0003)
> PCI: No IRQ known for interrupt pin A of device 00:03.0. Please try
> using pci=biosirq.
> eth1: RealTek RTL8139 Fast Ethernet at 0xc1821000, (hw address), IRQ 0
> eth1:  Identified 8139 chip type 'RTL-8139C'
> ...
> 8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
> 8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
> 8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
> 8139cp: 10/100 PCI Ethernet driver v0.3.0 (Sep 29, 2002)
>
> lspci lists the nic OK. The module is loaded OK. ifconfig -a shows the
> interface exists, hw addresss is correct, but no ip address. Trying to
> bring it up or give it an ip address with ifconfig gets the reply:
>
> SIOCSIFFLAGS: Device or resource busy

Possably, but it is saying, i am here but i am having many problems due to 
misconfiguration.
The error in itself is unexplanatry, possably due to what i have written 
above.

>
> I've never heard of this pci=biosirq business. If I thought it might
> help I would be delighted to 'use it', but where and how? BTW, this same
> nic works fine in other machines.

Ok if it works fine in another machine, what is the other machine and how is 
the BIOS setup to detect the card.???

It means set the IRQ to what i set aside in my BIOS, but you have not (if i am 
wrong correct me) done that.

>
> Google turns up about 3,000 people asking what pci=biosirq means. One
> reply pointed me to the kernel-documentation. It seems I should add
> append="pci=biosirq" in lilo.conf. This has made no difference except
> that I now get the following message in dmesg:

google is a wonderfull machine, what it does not tell you is that you 
sometimes need to read between lines.

>
> PCI: Error b1 when fetching IRQ routing table.

That is understandable, your BIOS is not setup correctly.

> Any insights?

Plenty more if what i have explained is not your answer.
I have a few 486 machines running at remote sites with rtl8139 nic's, take it 
from me they all work and they use the 8139too driver.

> TIA,
> Andrew
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
