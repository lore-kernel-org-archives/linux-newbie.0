From: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
Subject: Re: when is populate_rootfs called?
Date: Tue, 06 Apr 2021 10:06:15 +0200
Message-ID: <81674ed3ac96d789c69d6887ea2bfabb@kolabnow.com>
References: <CALJHi=-VQubwLxjObVmJjAh7A6j0Tm9h028kWcCfbHMo1mCnuQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
        message-id:references:in-reply-to:subject:subject:from:from:date
        :date:content-transfer-encoding:content-type:content-type
        :mime-version:received:received:received; s=dkim20160331; t=
        1617696378; x=1619510779; bh=86d3+oHnwWinm+/G2M1YiL9zrhd18kbxjdu
        SHDGYnZU=; b=05mRpunhoLzXaK2OzlHVJst7QKGZyNupH1rKrlfywd3lM/JAmwd
        /XKPlj2zSlHefzdFWAEVLYnQG0unxp4uBzMBMOJ0JTUyjwNHAaBhLb7STtvNVUsj
        1hKmwWxG2oTlnJ5LuwkKxJvLcQwDSf1WBc+Uj4LyEAkTJFQMy9wGRo+HQRXjlXZ3
        Lfv+eZA9oTFk+ParyQ1Qwc+W1eMGrmtLOGxl87ERvCR6OBkBmQyU2v8T/4pbPN8l
        iPmrh7gk6SK3tL2fO2FGjL2orDEJrNRBZq7KFSTsnBRusfcI+jn9hQXVfqfw4+Cd
        PPt2Vo2PTnjFU+4b0Cm15PTYyr/R4ZVzA1vx1PC3MQLqmr83IniVNzJIGK9fnRTw
        fvTeR+9SMS32MvlBrC5XOJJ+ov5GHqDU9KEPNdauOcZtWMl5ofFwnSZWIOcRxNt0
        jwzAmApmV8hJCWfTN5GgH7tIkzS 
In-Reply-To: <CALJHi=-VQubwLxjObVmJjAh7A6j0Tm9h028kWcCfbHMo1mCnuQ@mail.gmail.com>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Jiahao XU <jiahaoxu28th@gmail.com>
Cc: linux-newbie@vger.kernel.org

Le 04/04/2021 16:11, Jiahao XU a =C3=A9crit :
> I am still totally confused at when is `populate_rootfs` called.

Hi Jiahao,
Have you tried enabling tracing (ftrace IIRC) in the kernel to figure=20
that out?
Another possibility is to use Doxygen's call graphs, make sure you=20
restrict the
analysis to minimum set of files you need (just remove all irrelevant
architecures and driver directories from doxygen's input, or extract=20
them from
your kernel image. I did some experiments on the topic some time ago, it=20
might
prove useful:=20
https://bitbucket.org/hchaumette/linux_doxygen/src/master/.
Anyone interested can ask for access.)

Hubert
