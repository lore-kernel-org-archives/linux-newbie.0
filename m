From: Ray Olszewski <ray@comarre.com>
Subject: Re: IO
Date: Sat, 03 Jan 2004 07:39:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040103073408.01f10078@celine>
References: <5.1.0.14.1.20040102221932.01f989f0@celine>
 <20040102233918.54184.qmail@web61103.mail.yahoo.com>
 <5.1.0.14.1.20040102221932.01f989f0@celine> <200401031032.52542.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401031032.52542.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20040102221932.01f989f0@celine>
 <20040102233918.54184.qmail@web61103.mail.yahoo.com>
 <5.1.0.14.1.20040102221932.01f989f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:32 AM 1/3/2004 +0100, pa3gcu wrote:
>[...]
>
>Good comment Ray, btw the rtl8019 cards i ever used have ioport 0x300 set in
>them, so doing the following should detect the card;
>
>modprobe ne io=0x300

Yeah, RIchard. Every NE2000 I ever got fresh out of the box was set to 
IRQ=3, IO=0x300. So this approach is always worth a try.

If that doesn't work for the original poster ...one of his messages seemed 
to say that the card's IO address was different under Windows ... one 
option for him is simply to walk up the io= line until he finds one that 
works. That is, try in order ...

         modprobe ne io=0x240
         modprobe ne io=0x260
         modprobe ne io=0x280
         modprobe ne io=0x2a0

... and so on, until he finds the card.

He might also change the PnP  OS setting in his BIOS, to try to get the 
BIOS to set the card for him. This works for PCi cards, but I **think** it 
does NOT work for ISA cards. Still, it won't hurt to try.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
