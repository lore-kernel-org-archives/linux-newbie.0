From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Newbie installation problem
Date: Sat, 3 Aug 2002 07:17:39 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208030707000.30515-100000@Consulate.UFP.CX>
References: <001701c23a81$c565a3c0$6401a8c0@ENRIQUE>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001701c23a81$c565a3c0$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Enrique Nieves <spanfax@charter.net>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Enrique.

> I'm a newbie with Linux and I'm trying to install Red Hat 7.3 in my
> AMD K6 box (128 mb RAM, 233 mhz, 6 gb hard drive) to be the sole OS
> for that box.

There should be no problems with that setup - I recently installed Red
Hat 7.3 on an AMD K6 box with a 266 MHz cpu but otherwise identical to
your specification and had no problems at all.

> When the installation program tries to detect the network card
> (eth0) it gives me a FAILED message.

What precicely is the FAILED message? There are many different ones that
can come up, and the precice message is needed to determine the problem.

Also, what is the network card it's trying to detect?

> I'm trying to have a home network using a LinkSys router with a
> Windows XP box and this AMD PC connected peer to peer and another
> ethernet connection to use with my laptop.

I presume what you really mean is that you are trying to set up a home
network with three systems on it, these being your Windows XP box, the
AMD you're trying to set up under Red Hat Linux and your laptop, and you
are using either 10baseT or 100baseTX ethernet with the LinkSys router
acting as a routing hub for the three of them.

> I'm trying to decide if the problem is in the NIC card or in my
> attempt to install Red Hat.

If you're letting Red Hat Linux use its normal installation package,
then you should be unable to cause problems. However, it is always
possible that there is a problem with the NIC itself.

> Is it very difficult to connect a Linux box and an XP box peer to
> peer?

If they both detect the network interface correctly, then both Linux and
XP automatically set up 99% of what is required to produce a network
setup like the description above. All you need to do is to allocate an
IP address for each system, and you can set up the Linux system to do
that for the other systems automatically using DHCP software.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
