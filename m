From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: partitioning drive
Date: Tue, 23 Mar 2004 15:39:55 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403231539.55433.pa3gcu@zeelandnet.nl>
References: <20040323130248.GA10357@panix.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040323130248.GA10357@panix.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rei Shinozuka <shino@panix.com>, Newbie Linux Users <linux-newbie@vger.kernel.org>

On Tuesday 23 March 2004 14:02, Rei Shinozuka wrote:
> i was just delivered a lovely preinstalled system.
>
> [root@tuxedo shino]# uname -a
> Linux tuxedo 2.4.22-1.2115.nptl #1 Wed Oct 29 15:31:21 EST 2003 i686 athlon
> i386 GNU/Linux
>
> the only
> problem is that it has only one data partition. 

I cant reallt call it a problem but here goes.

There is absolutly nothing wrong in having one data partition, its a question 
of personal taste

> what i'd really like is 5-6 partitions something like:

You already have /boot and /swap which is really all you need.
Other may well argue that partitions for /var /home /usr/local/src so on and 
so on may well be nesassary because thats the way it used to be on some 
distro's, however times change disks get bigger situations change, this 
situation certainly has changed as disk size is thesedays (under normal 
curcumstancies) large enough.

Now i am presuming your disk has been fully used, if that is so then you dont 
have any room to create new partitions, you can resize the biggest partition 
however it is not 100% safe to do so, (thats what they say, i have never 
tryed with linux partitions), data loss cannot be ruled out, altho it is 
considered safe to do such things caution and backups are a must.

Now if you have a second disk you can partion it to suit your needs, all i am 
saying is if it works why break it. A second disk elininates repartitioning 
problems and data loss.

>
> /
> /home
> /local
> /data
> /boot2
> /swap
>
> what's my best best to make this happen?  fips?    fdisk?
> disk druid?  something on the fedora install disks?

None of the above unless you have some unpartitioned room on the disk in 
question.
AFAIK fips is for FAT partitions (msdos)
fdisk is only for creating new (when there is room) and deleting old 
partitions.
disk-druid (AFAIK) idem dito.

>
> this is what it looks like now.
>
> [root@tuxedo shino]# df -m
> Filesystem           1M-blocks      Used Available Use% Mounted on
> /dev/hda3               190140      7085    173397   4% /
> /dev/hda1                   99         7        88   7% /boot
> none                       505         0       505   0% /dev/shm
>

You have 3 partitions, we cant see if you have any spare room without the 
output of fdisk 

fdisk -l /dev/hda

> thanks so kindly in advance!
>
> -rei

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
