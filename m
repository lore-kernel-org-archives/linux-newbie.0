From: James Miller <jamtat@mailsnare.net>
Subject: Re: rename a "running" kernel?
Date: Mon, 16 Jun 2003 10:58:36 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0306161051190.1167@homenet>
References: <5.1.0.14.1.20030616080048.01fe40f8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030616080048.01fe40f8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Mon, 16 Jun 2003, Ray Olszewski wrote:
>
> Part of this is right and part of it wrong. Or maybe wrong: you don't
> mention what bootloader you are using, so I'm guessing it is lilo, which is
> the most common.
>
Nope, loadlin.  I should have mentioned that.

> BTW, an alternative to renaming the old and new kernels is editing
> /etc/lilo.conf so it has the name of the new kernel as the default to boot.
> You can then add a stanza for your old kernel to have it as a fallback.
>
I see that the same can be done with loadlin (specify the name of the
kernel you want to boot with).  I'll try that, rather than renaming, as
suggested.

> Also BTW, you don't mention what you are doing about modules. Assuming you
> use any, you want to be sure you get the modules directory set up properly.
>
I hadn't thought of that, but it's a good point.  I'm assuming that, since
this is the same kernel version with only a slight security tweak added,
the modules I'm currently using will continue to work.  I sure hope so.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
