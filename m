From: caszonyi@rdslink.ro
Subject: Re: IO
Date: Fri, 2 Jan 2004 23:53:20 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401022344270.656@grinch.ro>
References: <20040102195255.83648.qmail@web61108.mail.yahoo.com>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040102195255.83648.qmail@web61108.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: =?iso-8859-1?q?Jose=20Colmenares?= <jbcolmena2003@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 2 Jan 2004, [iso-8859-1] Jose Colmenares wrote:

>  I posted a message about 5 days ago about troubles
> setting a LAN. Well, i still having figured it out,
> but have detected that i installed the wrong driver
> for my card. I have a isa RTL8019, wich i found out
> works with ne2000 support. But to set it i need to
> know the io and irq adress... =BFhow could i find them?
> and also, after this =BFhow do i made the proper changes
> to my system?

try to enable pnp in kernel and include in the kernel the driver for
your card (ne2000)

run dmesg and chech in the output if the kernel has detected your card.
If not go to step 2 :-)
compile the support for your card as a module

reboot with your new kernel
use isapnnp to setup your card :-)
(pnpdump > isapnp.conf.sample
copy isapnp.conf.sample in /etc/isapnp.conf
and edit it to suit your needs )
then insmod the module for ne2000 with the parameters for io and int fr=
om
the isapnp.conf
and then ifconfig ...


> I'm runing slack 9.1. the command lsmod says there is
> a isa-pnp (wich could be my card),

isa-pnp is maybe the module for isa-pnp not for your card
you will have to have a module ne2k i think

>  ifconfig only
> detects a loopback (wich i don't really know what is,
> but is not of any help) and i have no eth0 (wich seems
> fine, since i have not been able to install any, but i
> figure i need to do so, or not?)

ifconfig *doesn't detect*.
ifconfig configures network interfaces and displays information about t=
his
configuration.

man isapnp
man pnpdump
man ifconfig
might help you :-)


> Thanks.
> By the way, the answers i got on the last post help
> quite a lot, if not for solving the problem (wich was
> imposible since i did not ask for the correct
> information) for learning a few interesting things. Thanks!
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
