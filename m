From: chuck gelm <chuck@gelm.net>
Subject: Re: Heavy load of graphics
Date: Tue, 05 Oct 2004 08:26:56 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41629310.5090508@gelm.net>
References: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041005050100.76032.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>hi
>
>well i am using linux 9.0 kernel 2.4 ver. 128 Mb RAM
>
>i have seen not only on this sytem but the other one
>having 512 Mb RAM the most of the memory is lost or
>taken by graphics or xserver. on my system around 90%
>is occupied by the xsever and on the sys with 512 Mb
>RAM around 70% is occupied. how to reduce this load. i
>oculd not get any article or stuff relate to this . if
>we can do something in kernel or in some way reduce
>this load while working in GUI envt
>
>thanks
>
>Ankit
>
>________________________________________________________________________
>  
>
Hi, Ankit:

 In my humble opinion:
There is no 'linux 9.0'; perhaps you mean
Red Hat 9.0
Mandrake 9.0
Suse 9.0
Slackware 9.0
Debian 9.0
...
The memory is not 'lost', it has only been used sometime
and will be reallocated if it is needed by another
application.  Have you noticed any errors or warnings
about 'low memory' or 'out of memory' ?  I am guessing
that you had not had anything fail due to 'memory lost'.
...
'how to reduce this load'

Use a window manager that requires less resources.
What window manager are you using now?
Gnome, KDE, FVWM[2,95],xfce,icebox,twm,...?
...
Yes, xserver, GUI, graphics,... all use very much memory.
...
;-)  Do not use GUI environment.  ;-)

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
