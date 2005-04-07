From: James Miller <jamtat@mailsnare.net>
Subject: Re: Card Reader
Date: Thu, 7 Apr 2005 16:29:00 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504071621050.5683@localhost.localdomain>
References: <d345eq$cuc$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d345eq$cuc$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 7 Apr 2005, smertz wrote:

> I have a new computer I installed Linux on Red Hat Enterprise Linux ES 
> release 4 (Nahant), it has one of those all-in-one card readers on it. I have 
> made mountpoints as root as follows for my thumb, Compact flash and secure 
> digital drive.
>
> mkdir /mnt/thumb
> mkdir /mnt/cf
> mkdir /mnt/sd
>
>
> Now when I tried to mount the Thumb (USB) drive I got an error # mount 
> /dev/sda2 /mnt/thumb
> mount: /dev/sda2 already mounted or /mnt/thumb busy.
>
>
> So what have I done wrong? I'm thinking sda2 is wrong, but don't know why?
>
> df -h shows the following
>
> [root localhost mnt]# df -h
> Filesystem            Size  Used Avail Use% Mounted on
> /dev/mapper/VolGroup00-LogVol00
>                     183G  2.9G  171G   2% /
> /dev/sda1              99M   19M   76M  20% /boot
> none                  247M     0  247M   0% /dev/shm
> [root localhost mnt]#

I haven't used RH for a couple of years--before the days of autmounting 
stuff, or at least toward the beginning of that trend. Isn't 4 the very 
latest release? Distros that have come out in the last year or so, 
especially those that use the 2.6.x kernel, seem to all be using some sort 
of virtual filesystem and often do automounting of inserted media and mass 
storage devices. Might not your RH version be one of these? Did you 
recently post something indicating your distro is using LVM? I'm guessing 
the system automounts that drive when you insert it. Have you searched 
around the system for indications that it's already mounted and/or its 
mount point? I'd kind of doubt that with such a recent distro you'd have 
to do any manual mounting. But this is somewhat circumstantial: as I said, 
I haven't used RH for a couple of years or so (since 7.3).

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
