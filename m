From: Ray Olszewski <ray@comarre.com>
Subject: Re: NIC cards
Date: Mon, 12 Aug 2002 07:54:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020812074517.0216c100@celine>
References: <20020812131245.GA18564@enoor.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020812131245.GA18564@enoor.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Majid Tahir <majid@enoor.com>, linux-newbie@vger.kernel.org

At 08:12 AM 8/12/02 -0500, Majid Tahir wrote:
>hello all
>i have just installed redhat 7.2 on a machine that needs to have 2 nic 
>cards...however neither of the two nic cards have been "found".  How would 
>i configure it so that the two cards are properly installed..also one 
>other problem is that i dont know the name of one of the nic cards, 
>therefore it is difficult to find the proper drivers


Without knowing what the NICs are, it is difficult to give you a good answer.

If you really cannot determine the make and model, your only hope is brute 
force -- try modprobe'ing the various NIC modules one by one, until you get 
a hit. (I've actually had to do his once or twice myself, and it isn't as 
bad as it sounds, at least with pci-based NICs, since most of them seem to 
use tulip, rtl8139, or eepro100.)

It is possible that RH 7.2 uses a kernel with modules too old for some 
NICs. I've seen this sort of mismatch come and go with the tulip driver and 
Linksys NICs, for example.

Finally, are you sure that the NICs are good? Are they detected by the BIOS 
prior to Linux boot/init? Do they show up in /proc/interrupts? In the 
"lspci" listing?

If the NICs use isa slots ... did you configure them to use different IRQs 
and IObase values? (If you put only one in the system, is it detected and 
initialized properly?)

If none of this helps, please post again with the following additional info:

1. Are the cards isa or pci?

2. What is the make and model of the one NIC you *do* know?

3. What can you figure out about the other one?

4. What kernel version are you using?

And answer for us the various questions I suggested you try to answer for 
yourself.


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
