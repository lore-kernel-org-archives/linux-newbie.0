From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to hide few disk file systems ??
Date: Mon, 27 Jan 2003 09:27:50 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030127092201.02183240@celine>
References: <3E35202F.44C4BDD2@npd.hcltech.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E35202F.44C4BDD2@npd.hcltech.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Short of physically disconnecting the hard drive from the system, there is 
no absolutely sure way to "hide" your old partitions from the new kernel. 
Various degrees of safety would be achieved by

         1. Not mounting the "important data" partitions, a degree of 
safety you can achieve by editing /etc/fstab

         2. Removing the /dev/hda* devices for the filesystems.

But the drive itself must always remain accessible, so at some level, the 
data always remain at risk.

So I guess the real question is ... how important are these "important 
data"? If they are worth $100, the solution is to buy a new hard disk and 
use it for your experiments. If they are not that important, then you may 
find either of my risk-reducing suggestions sufficient.

At 05:33 PM 1/27/03 +0530, Narsimha Reddy CH wrote:
>Hi,
>
>   I am having a linux system with a single hard disk.
>I have lot of important data on this hard disk. For
>experimental purpose I want to build a new kernel image
>from a source  which will contain modified code for file
>system implementation (the code contains some modifications
>to ext2 implementation). Also it may contain lot of bugs
>which may corrupt data on the disk. So, after loading the
>new linux kernel image, I want to make sure that my old
>data stored on the disk must be safe.
>
>  In order to achieve this,  I want to create a new
>partition on the disk. After loading the system with new
>kernel image, I want to access only the new partition
>that I created. And I want to hide the old ext2 partitions.
>
>   Now the problem is how can I hide the old partitions
>after booting the system with new kernel image (to avoid
>corruption of my old data on disk ) ??
>
>Any configuration is needed to hide file systems ??
>
>Can anybody help me how to solve this problem ??




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
