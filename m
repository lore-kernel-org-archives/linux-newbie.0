From: Michael Scondo <michael.scondo@arcor.de>
Subject: Re: not reading contents of cd-rom
Date: Sun, 8 Feb 2004 12:22:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402081222.57368.michael.scondo@arcor.de>
References: <5.1.0.14.1.20040207231643.01f9a4a0@celine> <200402081558.18273.wheds8@ms66.hinet.net>
Reply-To: michael.scondo@arcor.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200402081558.18273.wheds8@ms66.hinet.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Am Sonntag, 8. Februar 2004 08:58 schrieb S. Barret Dolph:
>
> I did this...
>
> >          mount /dev/cdrom /mnt/cdrom
>
> and got mount: you must specify the filesystem type.
>
Ok, then you should specify the filesystem:
mount -t iso9660 /devcdrom /mnt/cdrom


> How do I check if the cd is recognized by the kernel? I am trying to
> install SourceMage so I must select all the hardware options for the
> kernel.
>

If the above doesn't work, it's possible, that your kernel lacks the needed 
modules.. If I understand you right, you compiled your own kernel, mabe you 
didn't enable iso9660 / joliet ?

Regards,
Micha
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
