From: Ratnadeep Joshi <ratn.josh@gmail.com>
Subject: Re: are they physical address?
Date: Thu, 25 Nov 2004 13:15:01 +0530
Message-ID: <4bcb1f70041124234550630b23@mail.gmail.com>
References: <20041008071425.96875.qmail@web52906.mail.yahoo.com>
Reply-To: Ratnadeep Joshi <ratn.josh@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008071425.96875.qmail@web52906.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

These are the I/O mem regions registered by (or reserved for) the
driver modules (the "owners") so they don't interfere in each other's
fields.

- Ratnadeep

On Fri, 8 Oct 2004 08:14:25 +0100 (BST), Ankit Jain
<ankitjain1580@yahoo.com> wrote:
> hi
> 
> http://www.xml.com/ldd/chapter/book/ch02.html
> 
>  00000000-0009fbff : System RAM
>  0009fc00-0009ffff : reserved
>  000a0000-000bffff : Video RAM area
>  000c0000-000c7fff : Video ROM
>  000f0000-000fffff : System ROM
>  00100000-03feffff : System RAM
>   00100000-0022c557 : Kernel code
>   0022c558-0024455f : Kernel data
>  20000000-2fffffff : Intel Corporation 440BX/ZX -
> 82443BX/ZX Host bridge
>  68000000-68000fff : Texas Instruments PCI1225
>  68001000-68001fff : Texas Instruments PCI1225 (#2)
>  e0000000-e3ffffff : PCI Bus #01
>  e4000000-e7ffffff : PCI Bus #01
>   e4000000-e4ffffff : ATI Technologies Inc 3D Rage LT
> Pro AGP-133
>   e6000000-e6000fff : ATI Technologies Inc 3D Rage LT
> Pro AGP-133
>  fffc0000-ffffffff : reserved
> what is it reserved for?
> 
> if somebody can explin me this:
> 
> "Once again, the values shown are hexadecimal ranges,
> and the string after the colon is the name of the
> "owner" of the I/O region. "
> 
> thanks
> 
> ankit
> 
> ________________________________________________________________________
> Yahoo! Messenger - Communicate instantly..."Ping"
> your friends today! Download Messenger Now
> http://uk.messenger.yahoo.com/download/index.html
> -
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
