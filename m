From: glenn <genright@paradise.net.nz>
Subject: Re: how to remove Grub
Date: Fri, 3 Jan 2003 08:38:24 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301030838.24728.genright@paradise.net.nz>
References: <5.1.0.14.0.20030102071047.00bb7e88@mail.comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20030102071047.00bb7e88@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Fri, 03 Jan 2003 1:18 am, Chris wrote:
> Does anyone know how to remove/uninstall the Grub loader from Red Hat 8.0?
>
> I've been dual booting my PC between WinXP and RH8, but have now set
> up a separate PC in an attempt to learn Linux without fear of destroying
> what I have on my XP box, and would like to restore it back to XP only.
>
> With DOS/Win9x I'd just use "FDISK /MBR" to remove LILO, but I'm not sure
> what to do with XP and Grub.  Is it the same procedure?
>
> Thank you,
> Chris

Firstly, is XP on the same physical disk drive as linux or a seperate disk.

If they are on the same drive then using the /mbr option will prevent you 
booting onto XP as well. However if the drive is phisically seperate then go 
ahead and clean it up.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
