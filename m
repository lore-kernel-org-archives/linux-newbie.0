From: Ray Olszewski <ray@comarre.com>
Subject: Re: Checking File System
Date: Sun, 05 Dec 2004 21:38:39 -0800
Message-ID: <5.1.0.14.1.20041205213035.01f684d0@celine>
References: <200412052124.31027.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200412052124.31027.sotl155360@earthlink.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:24 PM 12/5/2004 -0500, SOTL wrote:
>Hi All
>
>I have an old system that I am trying to boot that will not boot.
>
>As originally setup there were two HD in the system.
>One with data and one with the operating system.
>
>The HD with data has long since been removed and current location is unknown.
>
>The system boots to Finding Modular dependencies: OK
>Checking file systems
>Couldn't find matching file system: Label=/mnt/Snoopie
>This was the name of the old second HD.
>
>I have removed LABEL=/mnt/Snoopie from stab.
>I know there is at least one other place I need to remove this LABEL from.
>
>Does anyone have any suggestions where that may be.


All this stuff is somewhat distribution dependent, and you haven't said 
which distro you use. For boot/init purposes, usually you only have to deal 
with the entries in /etc/fstab (I assume "stab" was a typo for this), which 
is where the scripts that handle fsck'ing and mounting look for info on 
what filesystems to mount.

Does the system go on to finish the init process after you get this 
message? It should, probably, since a filesystem mounted at /etc/Snoopie 
certainly isn't your root (/) filesystem. If it doesn't ... see if a 
well-placed CRTL-C will cauwe the process to resume. Once you have the 
system running, you can check for the source of the init problem more 
easily. Otherswise, you're going to have to boot from a rescue floppy of CD 
and mount the remaining filesystem to

If you post again in this, please round up the usual suspects -- tell us 
the distro and version, the kernel version ("uname -a"), and whether the 
system continues to init or stops at the point you are describing. Oh yes, 
also the contents of /etc/fstab -- /etc/Snoopie is almost surely not the 
"name of the old second HD"; it is the mount point for a filesystem 
(probably /dev/hdb1, or maybe /dev/hdc1, or possibly something else) on the 
second hard disk (/dev/hdb or /dev/hdc correspondingly).




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
