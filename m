From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux 0.99.15 (historycal question)
Date: Mon, 22 Mar 2004 09:07:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040322085546.01f07548@celine>
References: <Pine.LNX.4.53.0403212309440.705@grinch.ro>
 <Pine.LNX.4.53.0403212309440.705@grinch.ro> <200403221727.53277.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403221727.53277.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.53.0403212309440.705@grinch.ro>
 <Pine.LNX.4.53.0403212309440.705@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:27 PM 3/22/2004 +0100, pa3gcu wrote:
>On Sunday 21 March 2004 22:11, caszonyi@rdslink.ro wrote:
> > Hi
> >
> > Does anybody on this list knows which is the maximum size of a harddrive
> > that linux 0.99.15 can boot on ?
>
>No idea, however one rule of thumb must be, BIOS support, if the bios 
>supports
>30G drives then that will possably be your limit.
>
>Did we have such drives back then what would it be 1993 +/-
>I doubt it, never really though of it really.


The oldest Linux I could find here to check was a Yggdrasil distro from 
1994, and even that had the 1.1 linux kernel. (I believe an older version 
of Yggdrasil used 0.99, but I lost that long ago .. and I never could get 
it running, so I suppose that, in a sense, my answer to your question is "0 
MB".) It spends a lot of time discussing minimum partiion sizes but not 
maximum ones. My memory is that 512 MB drives were the common high-end 
drives around 1994, and 2 GB or so was the absolute maximum one could find 
to buy.

In any case, what will limit you is, most likely, not Linux itself, but 
either LILO or fdisk. Old versions of LILO will be subject to the 
1024-cylinder limit, requiring that you place a small /dev/hda1 partition 
on the drive and use it as /boot .

Over the years, I've run into limits on the size of a drive that fdisk (or 
cfdisk) can recognize. Newer versions always fix the problem, but 
1994-vintage systems are unlikely to have library support for these newer 
versions, and they will impose a limit on what size drives you can partition.

Finally, the maximum partition (not drive) size has increased over time. I 
**think** the linux 1.1.x kernel has a 2 GB filesystem limit (for ext2).

Linux itself does not use the BIOS to determine drive size. As long as the 
/boot partition (actually, the kernel image itself) is in a place on the 
drive that the BIOS can find, LILO should be able to boot the kernel.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
