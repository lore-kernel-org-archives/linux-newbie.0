From: caszonyi@rdslink.ro
Subject: Re: Moving Hard Drive
Date: Sat, 17 Jan 2004 00:26:09 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401170025160.826@grinch.ro>
References: <20040116105630.D896B1C900@heisspf>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040116105630.D896B1C900@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Fri, 16 Jan 2004, Peter wrote:

> Hi,
>
> I got myself a new larger hard drive which is presently a secondary master
> hdc. On it I have RH9 and SW9.1 the latter doing the booting with lilo.
>
> I want to make now this drive the master drive by which I assume it will
> become hda.
>
> Is it correct then that before doing the switch I will have to change in
> /etc/fstab and lilo.conf all what is labeled hdc to hda? Boot initially from a
> floppy into SW run lilo and I should be set with the new drive as master.
>

yes.
It's correct.
You have to modify also /etc/lilo.conf

> Thanks & regards
> --
> Peter
>
>
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
