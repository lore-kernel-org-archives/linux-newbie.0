From: James Miller <jamtat@mailandnews.com>
Subject: RE: Sharing drives.
Date: Thu, 3 Oct 2002 12:02:58 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210031151440.1285-100000@localhost.localdomain>
References: <3D9C4FAB.8CAD330F@sympatico.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D9C4FAB.8CAD330F@sympatico.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On 3 Oct 2002, LL Phillips wrote:

> Regarding the statement "Each would need a separate partition, AFAIK"
> I've recently considered dual booting my W98SE hard drive which is 40G
> total size with only 20G used made up of C: primary partition and
> D,E,F,G,H all logical drives in one extended partition (each around
> 3-6G each)  
> 
> When I put in my W98SE boot disk to make a second PRIMARY partition I
> was not allowed because fdisk told me there was already a primary
> partition existing.
> 
> If I wanted to have W98SE, Debian and Peanut Linux all on the same
> drive how would I go about that. Was I wrong to put in the W98SE boot
> / rescue disk.  Lindows (I'm an insider
> /pre-general-release-by-subscription user) will install beside windows
> if one has space on the drive, (it is called a friendly install).  I
> felt it was too risky to proceed because I didn't want to damage my
> W98SE main everyday machine.  Asus A7V motherboard.
> 
> Would you advise using a Linux distribution root / boot diskette
> combination to set up my hard drive.  (I've ruined about 8 laptop
> drives in the past trying so am nervous).
> Lorraine
> 

Lorraine:

It would help if you were to explain a bit more about what you're trying 
to do. Perhaps you know already that Linux does not need to be installed 
to a primary partition? And yes, M$'s fdisk is very limited in the way you 
can manipulate your hard drive. M$ would like for you to have only one 
primary partition on your drive (and would like for it ot be the exclusive 
property of Windows, in case you didn't know :) ). Of the OS's you 
mention, perhaps only Peanut Linux would require a primary partition 
insofar as, as I understand it, it is meant to install to a DOS partition. 
If it does *not* require a primary partition, there are other utilities 
(freeware/shareware) that will allow you to create either primary or 
extended DOS (FAT whatever) partitions. I could recommend some, if that 
would help you. Unfortunately, partitioning drives is *always* tricky, and 
there is always some risk of data loss. Commercial progs with a nice gui 
(e.g., Partition Magic) give some greater sense of security inasmuch as 
they give you a visual representation of what they're doing. But even they 
warn about the potential for data loss.

Based on some more information about precisely what you'd like to do, 
perhaps I can make some more helpful suggestions. Sorry if I've 
misunderstood your inquiry.

James 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
