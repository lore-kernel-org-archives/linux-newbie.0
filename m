From: Ray Olszewski <ray@comarre.com>
Subject: Re: Physical Mac Address
Date: Thu, 14 Oct 2004 10:50:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041014104344.07d144a8@celine>
References: <20041014155021.96634.qmail@web41505.mail.yahoo.com>
 <20041014155021.96634.qmail@web41505.mail.yahoo.com> <416EB76C.5060404@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <416EB76C.5060404@comcast.net>
References: <20041014155021.96634.qmail@web41505.mail.yahoo.com>
 <20041014155021.96634.qmail@web41505.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:29 AM 10/14/2004 -0600, Conway S. Smith wrote:
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Dave B. Sharp wrote:
> > Hi there,
> >   I would like to access the physical Mac addr. from
> > hardware (an immutable source). Do I need a specific
> > implementation for each NIC card or is there a kernel
> > call that calls each implementation. I have looked at
> > server sample driver sources.
> >   Thanx
> >      Dave
> >
>
>Not sure if I understand you exactly, but ifconfig shows the MAC address
>as HWaddr.

This is almost, but not completely true. ifconfig shows the assigned MAC 
address ... but this *can* differ from the physical MAC address, if the 
relevant NIC driver supports the software resetting of MAC addresses. (See 
the "hw class address" option in the "ifconfig" man page for details.) So 
this is not quite the "immutable source" the original poster asks for.

To check the physical MAC address, it might suffice to check the dmesg 
buffer right after boot/init. My system, as an example, saves this at 
boot/init in the file /var/log/dmesg . Checking it, I find this line:

     eth0: Lite-On 82c168 PNIC rev 32 at 0xe000, 00:A0:CC:D0:80:CB, IRQ 11.

This value should be written before any software modifications to the MAC 
address are possible (or at least likely), so it might be close enough to 
"immutable" to meet the original poster's needs.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
