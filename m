From: "Amin" <raihan@citech-bd.com>
Subject: Network card and kernel module problems
Date: Sun, 2 Feb 2003 21:56:26 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000801c2cad3$a696b500$eb6510ac@citechbd.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I use a Surecom EP-320X-S 100/10M Ethernet PCI adapter; I believe it's
Myson MTD3xx compatible --- at least, I've used it before with Myson's
fealnx.o module in Red Hat Linux 7.3.  The problem is I upgraded to RH8.0
and find that the kernel does not already support the card.  I tried
recompiling with built-in support (for the Myson module).  kudzu detected
the card at startup and configured it.  I've set it up it using Red Hat's
``neat'' tool (it uses DHCP), but it says it can't determine IP
information, and to check the cables.

Also, could anybody tell me of a way to check the various distros' kernels
to see if they come with built-in support for my card?

Help is much appreciated.

Yawar Amin

--
Why can't we just spell it orderves?
(Get Witty Auto-Generated Signatures from http://SmartBee.org)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
