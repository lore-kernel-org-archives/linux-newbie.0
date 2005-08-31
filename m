From: chuck gelm <chuck@gelm.net>
Subject: Re: How to change PCI Configuration space?
Date: Tue, 30 Aug 2005 22:47:28 -0400
Message-ID: <43151A40.7050602@gelm.net>
References: <b115cb5f0508292147de16584@mail.gmail.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0508292147de16584@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: Rajat Jain <rajat.noida.india@gmail.com>

Rajat Jain wrote:
> Hi List,
> 
> I want to change the PCI Configuration space of a particular device in
> my system. I am trying to use the "pcitweak" utility to do so, but am
> not suceeding. I would appreciate if some body could provide me any
> pointers in how to do so.
> 
> In this case, I want to change the value at offset 64:
> 
> $ pcitweak -r 5:9:1 64
> 0x01000001                 //original value
> 
> $ pcitweak -w 5:9:1 64 0x02000002      //new value
> 
> $ pcitweak -r 5:9:1 64
> 0x01000001                //no change?
> 
> TIA,
> 
> Rajat Jain
(This response is limited to linux-newbie, although
there should be a better list-server for this depth of a problem.)

Hi, Rajat Jain:

  Sorry, I cannot help.  Just for fun, I used pcitweak, scanpci, lspci,
and 'cat /proc/pci' and looked at my two rtl8139 ethernet cards.  I
think I found that they have 256 bytes of memory; one card uses memory
0x3e014000 - 0x3e140ff or 0x100 bytes.
(cat /proc/pci |grep -A 1 -B 4 ealtek)

  pcitweak read 32 bits (4 bytes) so
pcitweak 0:9:0 -r 0
  would show bytes offset 0, 1, 2, & 3.

pcitweak 0:9:0 -r[-w] 64 [value]
  would read[write] bytes offset 64, 65, 66, 67
  or 0x100, 0x101, 0x102, 0x103
  which is undefined.  There might be no memory at byte offset 64.

  I also used pcitweak 0:9:0 -r 4096, which I assume is outside the
configuration space of my pci device, but pcitweak dutifully displayed
output.  :-|

Hopefully you are not writing to ROM. :-|

Good luck,
Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
