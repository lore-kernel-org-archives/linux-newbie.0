From: Pete Shinners <pete@shinners.org>
Subject: Re: USB Mass Storage Devices
Date: Sat, 25 Oct 2003 09:22:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bne88l$jap$1@sea.gmane.org>
References: <1067097757.10057.15.camel@Abydos>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1067097757.10057.15.camel@Abydos>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Thorsten Alge wrote:
> I want to use my usb hd and my usb mp3-player an my linux computer. if i
> plug them on on after one, they will assigned as sda (i.e. my usb hd)
> and sdb (my mp3-player) . so i can add them to /etc/fstab. the problem
> is; if i plug on only one of them or in another order, the device files
> are changed to and the mount points are not correct. 
> 
> my first idea was to use volume labels. that works fine with my ext2
> partition but i don't helps on my vfat partitions. the compactflash
> cards an two of my partitions on my usb-hd must be vfat partitions. 
> 
> any ideas how to fix? 

i have this same problem and i cannot get it resolved. i believe with 
"devfs" you can get consistent device names?? not sure, but debian 
does not have devfs, so i need a different solution. i was hoping 
there was some "hotplug" script that would link the plugged in device 
to whatever system device it was assigned to, but i have found nothing.

help please?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
