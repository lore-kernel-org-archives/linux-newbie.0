From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tar confined to partitions
Date: Mon, 2 Sep 2002 14:37:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209021837.g82IbEK09801@hartford-hwp.com>
References: <5.1.0.14.1.20020902094227.021b5bd0@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020902094227.021b5bd0@celine> (message from Ray
	Olszewski on Mon, 02 Sep 2002 09:50:49 -0700)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@hartford-hwp.com

Ray,

>          -l, --one-file-system        stay in local file system when 
> creating archive

No, I'm not using that option. Someone suggested that perhaps tar only
handles one partition at a time, but you seem to say that is not the case.
 
> ... but it should not be the default ("file system" is what you surely mean 
> by "partition" in the immediate context; technically, file systems can span 
> multiple partitions, as in RAID setups, but that is unlikely here).
> 
> Might you have used this flag? If not, what is the EXACT tar command

tar -C "$1" -cOl . | tar -C "$2" -xpf -

> and what is the EXACT directory structure (as reported by "df", say)?

I'm beginning to worrry about the structure of my setup. Here is my
df:

Filesystem           1k-blocks      Used Available Use% Mounted on
/dev/sda6               497829    151450    320677  33% /
/dev/sda1                54416      8963     42644  18% /boot
/dev/sda12              248895    154687     81358  66% /home
/dev/sda9              2016016    935280    978324  49% /info
/dev/sda7              4538124   1879792   2427804  44% /opt
none                    515636         0    515636   0% /dev/shm
/dev/sda10             1011928     17128    943396   2% /tmp
/dev/sda8              7566400   3531920   3650128  50% /usr
/dev/sda11              497829    134261    337866  29% /var
/dev/sdb1              7906164   3717652   3786892  50% /mnt/storage
/dev/sdc1             39391848  30254364   7136488  81% /mnt/mirror

I guess this is self-explanatory, although I don't know that the
/dev/shm signifies."sdc" is a 40 Gb USB 2.0 external HD with one
partition used to mirror the internal hard disks. The "sdb" is a
single partition hard disk used for storage.

Haines Brown


 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
