From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: usr1,home1 after hdd cloning?
Date: 25 Nov 2002 08:43:22 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1038213801.20654.8.camel@zebra.vil.ite.mee.com>
References: <20021122224955.8911.qmail@linux.ik5bcu.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021122224955.8911.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ik5bcu@tin.it
Cc: valhalla-list@redhat.com, linux-newbie@vger.kernel.org

How did you clone the disk?

I believe (although I might be wrong) that the volume labels you are
seeing are just that - volume labels. These are names you can give the
partition itself (not the place where it's mounted) and if present are
displayed instead of "/dev/hda1" etc.

I would guess that when you cloned the original disk, the running system
saw that the volume labels "/" "/usr" and "/home" were already in use,
so appended 1 to each of them.


Having said all that, I don't manipulate partition labels - if the OS
install uses them, I leave them there, and if it doesn't I don't add
them. Therefore, I don't actually know how to change them. I'm sure
someone else around this list will, though...  :)

Might be worth a look at google for "volume labels" or "partition
labels" under linux.

Paul.



On Fri, 2002-11-22 at 22:49, Marco Calistri wrote:
> Hello listmembers,I cloned a new disk due badblocks on the old root hd
> (/dev/hda).
> 
> All seems ok now that new one is on place on first IDE channel but I noticed
> during boot that message "Checking filesystem..." is reporting:
> 
> /1....clean...
> /usr1........clean...
> /home1.......clean...
> 
> instead of /; /usr ;and /home.
> 
> Wonder why this happened and how to ged rid of this problem...
> a "df" is not showing any /usr1 or /1 neither /home1:
> 
> [marco@linux marco]$ df
> Filesystem           1k-blocks      Used Available Use% Mounted on
> /dev/hda3              5039592    366684   4416904   8% /
> /dev/hda1                24853      9898     13672  42% /boot
> /dev/hda2             10079356   2635440   6931904  28% /usr
> /dev/hda5              1007960     16520    940236   2% /tmp
> /dev/hda7              5039560    262932   4520624   6% /var
> /dev/hda8             11122592   2199636   8357952  21% /home
> /dev/hdb1              4208784   2819588   1389196  67% /mnt/win
> /dev/hdd1               778012    335636    402216  46% /mnt/slack
> none                     30920         0     30920   0% /dev/shm
> 
> I tried to trim /etc/fstab and to reinstall grub since now my root partition is
> on /dev/hda3 and not on /dev/hda1 as the previous install.
> Hope someone of you could point me on the solution.
> Thanks for readind,cheers.
> 
> ----------------------------------
> E-Mail: Marco Calistri <ik5bcu@tin.it>
> Date: 22-Nov-2002 Time: 23:48:34
> Red Hat Linux release 7.3 (Valhalla) kernel 2.4.18-18.7.x
> This message was sent by XFMail
> ----------------------------------
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Paul Furness <paul.furness@vil.ite.mee.com>
Mitsubishi Electric ITE BV VIL

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
