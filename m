From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: Re: address limitation
Date: Sat, 9 Oct 2004 10:12:58 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041009091258.40784.qmail@web52901.mail.yahoo.com>
References: <41670FE4.6020605@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41670FE4.6020605@verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Nelson <james4765@verizon.net>
Cc: newbie <linux-newbie@vger.kernel.org>

Thanks a lot for help

rest inline:)
 --- Jim Nelson <james4765@verizon.net> wrote: 
> Ankit Jain wrote:
> 
> >hi
> >
> >well i am not able ot understand this... there are
> lot
> >many more problems
> >
> >/proc/iomem
> >00000000-0009fbff : System RAM
> >0009fc00-0009ffff : reserved
> >000a0000-000bffff : Video RAM area
> >000c0000-000c7fff : Video ROM
> >000f0000-000fffff : System ROM
> >00100000-077effff : System RAM
> >00100000-00250d5b : Kernel code
> >00250d5c-0034ac43 : Kernel data
> >
> >this is just a brief..... System RAM what does that
> >mean? the range can just point 65K of RAM? what
> about
> >rest? so what that means?
> >  
> >
> 
> Okay,
> 
> 00000000-0009fbff : System RAM
> 
> This is the 640 KB that is part of the legacy
> support for real-mode PC 
> applications.
> 
> 0009fc00-0009ffff : reserved
> 000a0000-000bffff : Video RAM area
> 000c0000-000c7fff : Video ROM
> 000f0000-000fffff : System ROM
> 
> 
> This is the BIOS and VGA address area (up to 1 MB),
> once again to 
> support real-mode PC stuff (DOS, primarily).  The
> original IBM PC's (I 
> think starting with the XT, maybe the PC) had a
> 20-bit memory addressing 
> scheme, but only 16-bit registers.  If you ever want
> to hop into the 
> way-back machine to the days of CGA's, hardcards,
> and 5 1/4" floppies, 
> grab a book on DOS programming - FreeDOS
> (http://www.freedos.org) is 
> still out there, and it's actually kind of fun to
> run something that 
> blindingly simple :)
> 
> 00100000-077effff : System RAM
> 
> 
> Here is the rest of your system's memory.
> 
> 
> >also,
> >
> >on a 32 bit proceesor we can at the most have a
> access
> >to 4GB of area as we have that many address space.
> >well some what it look stupid but then also asking
> >some where this blunder i have to clear, that how
> it
> >access the hard disks which is of much high
> capacity?
> >  
> >
> Hard disks are controlled by sending requests to and
> from the drive for 
> blocks of data.  Sort of like reading a book - you
> only see a couple of 
> pages at a time, but you can access the whole book,
> or any section of 
> it, by flipping to the right page number.  Same way
> with the hard disk 
> controller.  Ask it for sector 11432, and it will
> give it to you 
> (oversimplified, but essentially correct).

thanks again but according to this concepts of pages
if the size is of size 40 GB then size of each page
should be 10kb

is it correct...becaz when only it will be able to map
the complete hard disk....

thanks again


> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
>  

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
