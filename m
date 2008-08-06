From: Rene Herman <rene.herman@keyaccess.nl>
Subject: Re: Who decides PCI device number?
Date: Wed, 06 Aug 2008 19:49:13 +0200
Message-ID: <4899E419.80507@keyaccess.nl>
References: <C86899CCB10A6C4E93D5978DCB232D4B09002FD5@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B09002FD5@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

On 06-08-08 07:54, Rajat Jain wrote:

> In the PCI addess (domain + PCI bus num + PCI Device num + function num)
> of a PCI device, who decides the PCI device number assigned to a PCI
> device? 
> 
> - Is it hard wired for a particular PCI slot? (So that any PCI card
> plugged into this slot will always have a particular PCI device number).

Yes, for a definition of "hard-wired" which if I'm not mistaken (which I 
might be, but believe I remember reading that once) includes the 
possibility for busses to change numbering depending on bridge detection 
order.

But yes, the "dd" in the DDDD:bb:dd.f lspci -D output indeed signifies 
the slot, not the card -- exchange two PCI cards in your system and see 
them change numbering around as well.

> -Or is it hardwired on the PCI card? (So that this card if plugged on
> any slot in any machine will have the same PCI device number)?

No.

Rene.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
