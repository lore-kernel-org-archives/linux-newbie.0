From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: IO
Date: Sat, 3 Jan 2004 10:32:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401031032.52542.pa3gcu@zeelandnet.nl>
References: <20040102233918.54184.qmail@web61103.mail.yahoo.com> <5.1.0.14.1.20040102221932.01f989f0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040102221932.01f989f0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 03 January 2004 07:24, Ray Olszewski wrote:
> At 12:26 AM 1/3/2004 -0500, rob.rice wrote:
> >IF this card was ever installed by windows you may need to reconfigure the
> >eeproms in the card windows has a habit of rewriting the addresses
> >so that olny windblows can use the card I had to do this with an asanite
> >frindly net card what program you use demends on what card you have and
> >from what I foung on google.com/linux ne2000 is the driver you need so
> >this may be what the problem is
>
> Where did you find this? What kernel is it in reference to?
>
> I know of an "ne" kernel module (for NE2000 isa cards) and an "ne2k-pci"
> module (for NE2000 pci cards) ... but I've never seen a Linux kernel module
> with the actual name "ne2000" in any 2.2.x or 2.4.x kernel I've used.


Good comment Ray, btw the rtl8019 cards i ever used have ioport 0x300 set in 
them, so doing the following should detect the card;

modprobe ne io=0x300

-- 
If the Linux community is a bunch of theives because they
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
