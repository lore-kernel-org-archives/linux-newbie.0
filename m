From: Ray Olszewski <ray@comarre.com>
Subject: Re: rename a "running" kernel?
Date: Mon, 16 Jun 2003 08:07:33 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030616080048.01fe40f8@celine>
References: <Pine.LNX.4.56.0306160832420.1167@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0306160832420.1167@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

At 08:43 AM 6/16/2003 -0500, James Miller wrote:
>Here's a probably not too profound newbie question.  I just downloaded an
>updated kernel for my router.  I've copied the kernel over to the right
>dir and everything and need to rename it to the name of the current
>kernel, so that next time I boot it'll be used.  Before renaming it,
>though, I should rename the kernel I'm now using - to kernel.old or
>something like that.  My question is just whether I can do this safely
>with that machine and kernel running.  Seems to me like I can since, as I
>understand it, the kernel gets loaded into RAM and does not run from disk
>(I used quotation marks around "running" above since, as I see it, I'm
>not renaming the kernel that's loaded in RAM, i.e., really running, but
>the image of it which is stored on the HD).  But that's just my probably
>not-so-enlightened deduction.  I thought I should ask here first if it is
>ok to do this, i.e., I'm not taking any risks of system crashes or
>foul-ups by so doing.


Part of this is right and part of it wrong. Or maybe wrong: you don't 
mention what bootloader you are using, so I'm guessing it is lilo, which is 
the most common.

The "right" part: It is completely harmless to rename your "running" 
kernel, for the exact reasons you say.

The "wrong" part: with lilo, giving your new kernel the name of the old one 
is not sufficient to cause lilo to load it the next time you reboot. You 
have to run lilo (the Linux app, not the bootloader itself -- they both get 
called "lilo", so this can be confusing) so it updates the information in 
the MBR about the location of the kernel to boot. If you don't make that 
change, the system will continue to boot (or try to boot ... big problem if 
you delete the old kernel, but none if you just rename it) the old kernel.

BTW, an alternative to renaming the old and new kernels is editing 
/etc/lilo.conf so it has the name of the new kernel as the default to boot. 
You can then add a stanza for your old kernel to have it as a fallback.

Also BTW, you don't mention what you are doing about modules. Assuming you 
use any, you want to be sure you get the modules directory set up properly.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
