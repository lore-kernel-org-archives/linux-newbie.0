From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: NIC cards
Date: Mon, 12 Aug 2002 10:55:39 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208121455.g7CEtdO27111@hartford-hwp.com>
References: <20020812131245.GA18564@enoor.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020812131245.GA18564@enoor.com> (message from Majid Tahir on
	Mon, 12 Aug 2002 08:12:45 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: majid@enoor.com
Cc: linux-newbie@vger.kernel.org

Majid,

I've suffered from the multiple NIC problem, and so stalted way the
following notes. But keep in mind I've no expertise myself.

It is especially tricky to configure more than one network of the same
type, such as getting two NICS to co-exist. Sometimes the machine
determines which NIC is eth0 and eth1, so that when the drivers are in
the kernel or when two cards share a driver, whichever the machine
sees first is labeled eth0. Therefore you may have to adapt your
configuration to suit the machine.

1. If adapters don't coexist, you can try just swapping eth0 and eth1.  

2. Use NICs that use the same driver compiled into the
kernel. Sometimes this works automatically, but sometimes you must
include proper kernel options in LILO configuration so that the kernel
looks for two NICs (add line: append = "ether=0,0,eth1" to tell Linux
to look for a second card). This probably required if NICs are ISA
cards.

3. NICs that use the same driver which is compiled as a module. You can
usually get good results by adding lines in /etc/conf.modules to tell
the system you have two NICs. Add one alias line per NIC, as in:

	alias eth0 tulip
	alias eth1 tulip

This tells the system to use the tulip driver for both cards.
	
4. Different drivers compiled into the kernel. With PCI cards, which
often work automatically, see (2) above.

5. Two NICs using different drivers compiled as modules. This works
like (3) above except that the lines refer to different modules.
				   
For more info on multiple cards, see 
	http:/cesdis.gsfc.nasa.gov/linux/misc/multicard.html

Hope this helps, but others will surely chim in with corrections and
other suggestions.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
