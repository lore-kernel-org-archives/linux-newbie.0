From: Ray Olszewski <ray@comarre.com>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 14:30:36 -0700
Message-ID: <5.1.0.14.1.20050407142351.0202e3e0@celine>
References: <d345eq$cuc$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d345eq$cuc$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:35 PM 4/7/2005 -0600, smertz wrote:
>I have a new computer I installed Linux on Red Hat Enterprise Linux ES 
>release 4 (Nahant), it has one of those all-in-one card readers on it. I 
>have made mountpoints as root as follows for my thumb, Compact flash and 
>secure digital drive.
>
>mkdir /mnt/thumb
>mkdir /mnt/cf
>mkdir /mnt/sd
>
>
>Now when I tried to mount the Thumb (USB) drive I got an error # mount 
>/dev/sda2 /mnt/thumb
>mount: /dev/sda2 already mounted or /mnt/thumb busy.
>
>
>So what have I done wrong? I'm thinking sda2 is wrong, but don't know why?
>
>df -h shows the following
>
>[root localhost mnt]# df -h
>Filesystem            Size  Used Avail Use% Mounted on
>/dev/mapper/VolGroup00-LogVol00
>                      183G  2.9G  171G   2% /
>/dev/sda1              99M   19M   76M  20% /boot
>none                  247M     0  247M   0% /dev/shm
>[root localhost mnt]#

You don't tell us anything about your hardware, so any responses really are 
largely guesses. From the df output you show above, I'd infer that sda is a 
physical hard disk of some type.

The card reader, then, is more likely sdb than sda, so I'd be trying sdb1 
or sdb2 for the thumbdrive. Each possible device will have a different sdb* 
value, and figuring oout which is which is largely guesswork ... unless 
you're lucky enough to have a kernel with the sort of USB support for 
hotplugging that tells you where things connect to (in my experience, 
output to the console.

See what "more /proc/scsi/scsi" tells you about what the kernel *thinks* is 
connected. Please include this info if you need to post a followup.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
