From: Dennis Schridde <lindevel@gmx.net> (by way of Dennis Schridde
	<lindevel@gmx.net>)
Subject: Re: Can't write VFAT filesystem
Date: Tue, 4 Nov 2003 17:36:14 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200311041736.14849.lindevel@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> I've set up my /etc/fstab file as usual, so that I can
> access my Windows C: and D: drives, as shown in the attachment.
>
> I can mount/unmount both these drives and read them.  I can
> also write to the /mnt/c filesystem.  But for some reason I
> can't write to the /mnt/d filesystem.  Specifically:

Perhaps your D: - drive is NTFS, not VFAT?
I think the Kernelmodule for writing on NTFS is "dangerous" at the moment, so
not installed by the most distributions...
(if you have installed Windows XP, this is the standard (like on my own
system))

HTH,
Dennis Schridde

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
