From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: partitioning drive
Date: Tue, 23 Mar 2004 16:01:00 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4060512C.5080700@arrakis.es>
References: <20040323130248.GA10357@panix.com> <200403231539.55433.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403231539.55433.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


>>
>>what's my best best to make this happen?  fips?    fdisk?
>>disk druid?  something on the fedora install disks?
> 
> 
> None of the above unless you have some unpartitioned room on the disk in 
> question.
> AFAIK fips is for FAT partitions (msdos)
> fdisk is only for creating new (when there is room) and deleting old 
> partitions.
> disk-druid (AFAIK) idem dito.
> 
> 
>>this is what it looks like now.
>>
>>[root@tuxedo shino]# df -m
>>Filesystem           1M-blocks      Used Available Use% Mounted on
>>/dev/hda3               190140      7085    173397   4% /
>>/dev/hda1                   99         7        88   7% /boot
>>none                       505         0       505   0% /dev/shm
>>
> 
> 
> You have 3 partitions, we cant see if you have any spare room without the 
> output of fdisk 
> 
> fdisk -l /dev/hda
> 
>
What about partboot? A bootdisk with a partition editor:

http://ftp.lug.udel.edu/pub/gnu/parted/bootdisk/

Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
