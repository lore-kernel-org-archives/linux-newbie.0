From: Ray Olszewski <ray@comarre.com>
Subject: Re: self-made potato driver-1.bin
Date: Sun, 25 Aug 2002 15:40:05 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020825152156.0225d270@celine>
References: <1030305001.695.18.camel@highflyer>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1030305001.695.18.camel@highflyer>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Michael Gruner <stockraser@yahoo.de>, linux-newbie@vger.kernel.org

Well ... I'm kinda the resident Debian junkie here, but I haven't done a 
potato install in well over a year, and I've never used an smc-ultra NIC 
that I can recall. So the advice I can offer is limited.

First, why not try installing Woody? Potato is no longer Debian-stable; 
Woody is, as of about a month ago. Its installer may be new enough to solve 
your problem.

Second, if you want help troubleshooting the smc-ultra problem, that 
requires kernel expertise, not Debian expertise as suchh. But you haven't 
given us any info to work with; Richared already ran through the right list 
of questions.

Third, I'm curious as to how you created a working replacement kernel for 
the bootdisk. Did you follow the instructions in the README file on the 
rescue floppy?  If you did, then you should have a working replacement, so 
why not just dodge the modules issue completely by compiling in the NIC 
drivers you need (as newer bootdisks do with the tulip driver, for example)?

Finally ... if you have a working system, install the boot-floppies 
package. In includes a script for creating the drivers disk set. The 
drivers file is created as a single file, then put on multiple floppies 
using a small c program called "floppy-split". I haven't used this myself, 
but I doubt you can fake your way around it ... from a quick skim of the 
source, it looks like the driver floppies don't have a real filesystem on 
them, just parts of a file that can be reassembled by some app on the 
rescue disk.

(If you don't have a working Debian system, this last suggestion has a 
Catch-22 sound to it. Sorry; I'm only the messenger here.)

At 09:50 PM 8/25/02 +0200, Michael Gruner wrote:
>Hello,
>
>trying to install a debian potato via ftp on a pc with a smc-ultra-card
>is driving me crazy :-/.
>
>It seems not to be possible to get debian potato to work with smc-ultra
>NICs. Some times ago i tried to get it installed on a P90 with a
>smc-ultra but had no sucess. Installing SuSE on that pc I had no
>problems to get the NIC work. Today the next try: I put the card into a
>486 pc result: potato didn't load the module smc-ultra whether I gave
>the io and irq i set the jumper on the card on nor i gave no options to
>load it: potato every-time told me: device or resource busy... starting
>the distribution fli4l (www.fli4l.de) on that pc the card worked without
>any problems.
>
>I searched google and groups.google for that but without any sucess
>solving the problem.
>
>So i decided to compile my own kernel for the installation disk. I've
>got the kernel sources for 2.2.21. I sucessfuly mounted the rescue disk
>of my potato so I can put the bzImage as "linux" on it. But what about
>the driver-1.bin-disk? I'm not able to mount that disk to replace the
>modules on it.
>
>Any hints for solving the problem with the origin potato disks or how to
>mount and replace the driver-1.bin disk with the new kernel modules?





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
