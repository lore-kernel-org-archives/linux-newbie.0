From: "Tom Beer" <mailings@analogon.com>
Subject: Re: char-major-6
Date: Fri, 19 Apr 2002 16:08:49 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <008801c1e7ab$bc538aa0$0901a8c0@system>
References: <m3662o5ol0.fsf@wobble.eth.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Anna,

take a look at the thread from yesterday named "usb
device installation". There a similiar problem poped up.
I'm not sure if it is fixed or not. Additionally you
may read /usr/src/linux/Documentation/modules.txt
as a starter. I don't think that the lpd will work, besides
that he is started "successfully". Cause without the device,
there is no way accessing it, if lpd tries.
Therefore you have to create the /dev/lp0 device
with a char-major number of 6 (look at the thread).
Or you reconfigure your lpd using another device as
lp0. This is covered in the printing howto. Pointer: /etc/printcap

Greets Tom



> Dear All,
>
> When I try to do
>
> # /etc/rc.d/init.d/lpd start
> Starting lpd: Warning - test: \
> cannot open lp device '/dev/lp0' - No such device
>
> [I broke the line into two.]
>
> And in the /var/log/messages file I have
>
> Apr 19 09:19:05 wobble modprobe: modprobe: Can't locate module
char-major-6
> Apr 19 09:19:05 wobble lpd: lpd startup succeeded
>
> Can anybody tell me, which config option is this char-major-6?
>
> I am using RH 7.1,
>
> $ uname -a
> Linux wobble 2.4.16 #2 Fri Apr 19 01:09:19 IST 2002 i686 unknown
>
> Thanks for all the help.
>
> Cheers,
> anna
>
> --
>
> Get your free e-mail account at http://www.linuxmail.org
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
