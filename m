From: Ray Olszewski <ray@comarre.com>
Subject: Re: IO
Date: Fri, 02 Jan 2004 22:18:39 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040102220154.01fbc1a0@celine>
References: <Pine.LNX.4.53.0401022344270.656@grinch.ro> <20040102233918.54184.qmail@web61103.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040102233918.54184.qmail@web61103.mail.yahoo.com>
References: <Pine.LNX.4.53.0401022344270.656@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 05:39 PM 1/2/2004 -0600, Jose Colmenares wrote:
>  Found isapnptools.
>did pnpdump, but don't understand what is says! I
>cannot copy isapnp.conf.sample here because my floppy
>broke down (just to add more fun) and or course don't
>have internet on my slack box.
>
>It does say something like: minimum IO base adress
>0x0280, maximun IO base adress 0x03e0. Tried both on
>modprobe, none worked (when I see the syslog no card
>was found with such an adress).

Sorry but, as the saying goes, close only counts with hand granades and=
=20
horseshoes ... not error messages and config files. You aren't likely t=
o=20
get help with interpreting this output until we can see it, not "someth=
ing=20
like" it. But see below.

>=BFhow do i know how to edit isapnp.conf.... ?
>
>Also, on dmesg, it says:
>isapnp: Card 'Genius LAN GE2000III Series Card'
>isapnp: 1 plug & play card detected total.
>
>Also, i wrote down the following before formatting
>windows. It was using this:
>
>Raltek rtl8019 or compatible
>         i/o interval 02c0-02df
>         Memory interval 000DC000-000DFFFF
>and was using a NE2000.sys file for the device

OK. One possibility, then, is to believe what Windows tells you about t=
he=20
card and see if it works under Linux. That is, what happens if you run =
the=20
command

         modprobe ne io=3D0x2c0

(as I recall, ne can autoprobe for the irq but not the io value)?

Do you get a failure message from the module? If you do not, does "ifco=
nfig=20
-a" then show an eth0 interface present? If it does, what IRQ does it=20
report? And can you now assign it an IP address (maybe with "ifup eth0"=
, if=20
Slackware uses the ifup/ifdown commands that are pretty standard on oth=
er=20
Linux distros)?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
