From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: unfragment fat under linux
Date: Fri, 18 Apr 2003 18:24:10 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0304181816460.26501-100000@ppg_penguin>
References: <b7ohco$bvg$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b7ohco$bvg$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arno Seitzinger <spam2_arno@lucienet.de>
Cc: linux-newbie@vger.kernel.org

On Fri, 18 Apr 2003, Arno Seitzinger wrote:

> Hi NG,
> 
> I would like to defrag my USB harddrive (Archos Jukebox Recorder). 
> Filesystem is fat. Is there a way to do so under Linux?
> 
> Greetings
> Arno
> 
> 

 Maybe dosfsck can do this, I'm not sure, but even if it does, it's
still flagged as `alpha' software (for VFAT), and I've had problems
using "another operating system" which might relate to using dosfsck.

 If you've got sufficient space elsewhere (no idea how big this drive
is), the easiest thing would be to tar everything up to another drive,
umount the usb drive, remake the filesystem in it, remount, and extract
back to it.  Or perhaps ask yourself whether you *really* need to defrag
it ;-)

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
