From: James Miller <jamtat@mailsnare.net>
Subject: Re: shared partition for dual boot
Date: Fri, 11 Jul 2003 21:51:25 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307112144590.1107@homenet>
References: <Email.5vI5aCTmbTE@lcsd.k12.wa.us>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Email.5vI5aCTmbTE@lcsd.k12.wa.us>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Fri, 11 Jul 2003 dbentson@lcsd.k12.wa.us wrote:

> I've just done my home computer with a dual boot (using grub) for Redhat 9 and W2K. There is a 97GB partition that I'm hoping to be able to access with both systems. Right now I have formatted that to FAT32 using W2K utilities and W2K sees it just fine as the E drive.
>
> What's my next step if I want to make this appear as another available drive
> for my GUI in Linux? Is there something I can edit to make it appear on the
> desktop of all users? Let me know if I forgot some important details.
>
You need to tell us what desktop you're running Dan, since how you make
icons appear there is dependent on that.  Is it Bluecurve?  I can't say
much about that, since I've never used Bluecurve, but others might be able
to offer some advice.

Even more fundamental than making an icon representing the drive appear on
the desktop though, is ensuring the drive has a mount point under RH and
is accessible to the system.  Is the drive listed under /etc/fstab?  Can
you navigate to it using some graphical file manager, for example?

I'm no so experienced with Linux user administration, so I'll have to let
someone else handle explaining how to make the drive appear on all user
desktops.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
