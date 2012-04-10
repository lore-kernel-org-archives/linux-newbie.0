From: "Anatoly Sivov" <mm05@mail.ru>
Subject: Re: rcu_sched_state detected stall, no stack trace
Date: Tue, 10 Apr 2012 21:43:07 +0400
Message-ID: <op.wcj8t5z6fzo5me@stalin>
References: <B97B134FACB2024DB45F524AB0A7B7F206881ED5@XMB-BGL-419.cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail;
	h=In-Reply-To:Message-ID:From:Content-Transfer-Encoding:MIME-Version:Date:References:Subject:To:Content-Type; bh=Ak1Bs4hJ+syO7u0LCTWVATdFHSJGNlw6Jhu1uYkS2U8=;
	b=AEEoebv8bsBsfnCUlJxWbIwA0JNwOKV3/4R3p5dtyXoCIjEpH573sjMvxvPCdzHSB0DQ+KhSNrbMT/yheWqthI+IHCDoIlEA++p7OSk6Yumbt4FZhyyu+eJyyQX20Cnl;
In-Reply-To: <B97B134FACB2024DB45F524AB0A7B7F206881ED5@XMB-BGL-419.cisco.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="koi8-r"; format="flowed	delsp=yes"
To: linux-newbie@vger.kernel.org, "Prashant Batra (prbatra)" <prbatra@cisco.com>

Prashant Batra (prbatra) <prbatra@cisco.com> =D0=C9=D3=C1=CC(=C1) =D7 =D3=
=D7=CF=A3=CD =D0=C9=D3=D8=CD=C5 Mon, =20
09 Apr 2012 16:28:36 +0400:

> Hi,
>
> I am running vanilla kernel 3.0.23 . I am trying to add some 6K and m=
ore
> IPv6 IPSec tunnels.
> I am getting these warnings in dmesg close to 6k tunnels, after which
> the kernel hangs and have to reboot the kernel.
>
> [ 1511.045261] INFO: rcu_sched_state detected stall on CPU 4 (t=3D300=
000
> jiffies)
> [ 1534.736899] INFO: rcu_bh_state detected stalls on CPUs/tasks: { 4}
> (detected by 13, t=3D300002 jiffies)
>
> I am not getting any back-trace also, to figure out what is actually
> causing the stall to happen.
>
> Could someone help to figure out the issue.
>

Hi,

I guess the better way to get help on this issue is to repost your mess=
age =20
to netdev list.

BR, Anatoly
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
