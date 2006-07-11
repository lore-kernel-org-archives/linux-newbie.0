From: ali shahrokni <shahrokni@gmail.com>
Subject: Re: automatic service start at startup
Date: Tue, 11 Jul 2006 16:59:30 +0100
Message-ID: <44B3CAE2.8050803@laposte.net>
References: <44B2A02F.5040304@laposte.net> <44B2C769.4090607@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44B2C769.4090607@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: =?UTF-8?B?QXJ0xatyYXMgTW9za3ZpbmFz?= <arturas.moskvinas@gmail.com>, ray@comarre.com, raseelbhagat@gmail.com, linux-newbie@vger.kernel.org

Thanks guys,
using your help, I could solve the problem the neat way: I just had to=20
set a higher number (99, instead of 19) to the symlink to autofs, in=20
rc2.d... I don't know exactly why it had to be higher, but now it works=
=20
fine! thanks!

ali

Art=C5=ABras Moskvinas wrote:

>ali shahrokni wrote:
> =20
>
>>Hello all,
>>I am wondering how I can run "autofs start " automatically at startup=
 of
>>my system, so that I can log on to the network directly.
>>I would appreciate any hints.
>>   =20
>>
>
>It depends on distro you are using. The easiest way (though not the be=
st
>I think) is to add an entry into "rc.local" file (I think you should
>find somewhere in /etc subdirectories, because it depends on distro).
>Second way is to use special tool to add service to startup, for examp=
le:
>
>Gentoo: rc-update add autofs default
>SUSE (at least SLES): user graphical application yast, and choose
>Runlevel editor (i do not know the command line equivalent)
>Red Hat(and fedora core, Mandrake too, I think...):
>system-config-services (graphical tool), or chkconfig --add autofs
>Ubuntu (i think debian too): tool rcconf
>
>Arturas M.
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie=
" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
> =20
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
