From: Jay Maass <jay.maass@verizon.net>
Subject: Re: LI -lilo booting problem
Date: Tue, 30 Jul 2002 16:55:23 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020730205523.VJOW17636.out010.verizon.net@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, linux-newbie@vger.kernel.org

Frank Roberts - SOTL sotl155360@earthlink.net:

> Date: 2002/07/29 Mon PM 07:11:28 EDT
> To: linux-newbie@vger.kernel.org
> Subject: Re: LI -lilo booting problem
> 
> Somewhere in my far distant past I had a dual boot RH 6.0 / MS Windows system. 
> I now have a dual boot RH 7.3 box.
> If I recall correctly all I did to R H 6.0 box to make it read and write to 
> the Win side was add the following line to fstab:
> 
> /dev/hda1    /mnt/dos    vfat    user,noauto,rw     0 0
> 
> I have added the above to the RH7.3 box but the KDE mount User Tool does not 
> show that dos is mountable.
> 
> I would appreciate what ideas and guidance the experts on this list may have 
> to offer.
> 
> Thanks
> Frank

Frank,

I'm a perpetual newbie in Linux, so I do not have a specific
answer for you. My experience, however, has been that I can
read/write to/from an ms-dos partition in a dual-boot BasicLinux/MS-DOS 6.22/Windows 3.11 installation.

However, this was without XWindows. I'm not
familiar with the KDE mount Utility Tool you mention.
Certainly you're on the right track with your fstab entry.
Are you able to read/write to/from your ms-dos partition
outside of XWindows, i.e., from your Bash shell?

Regards,
Jay Maass,
suburban Philadelphia






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
