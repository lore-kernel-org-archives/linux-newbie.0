From: Ray Olszewski <ray@comarre.com>
Subject: Re: LAN
Date: Thu, 25 Dec 2003 23:40:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031225232557.01f06748@celine>
References: <20031226064427.267.qmail@web21403.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031226064427.267.qmail@web21403.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 12:44 AM 12/26/2003 -0600, Jose Colmenares wrote:
>I just installed Slackware. It's working fine and
>smooth. I also have three machines runing Windows (one
>XP and two 98). These are conected through a LAN. =BFHow
>do I configure my new linux system to recognize the
>network and comunicate to it? it does not even
>recognize the LAN card. =BFdid I miss something during
>the configuration?

Most likely you did. Exactly what you missed is hard to say. For more=20
specific help, please tell us:

1. What version of Slackware?

2. What version of the Linux kernel? ("uname -a")

3. What network interface card (NIC) are you using in the system?

4. How do you know "it does not even recognize the LAN card"? Just so *=
we*=20
can be sure, what is the complete output of "ifconfig -a" (run it as ro=
ot)?

I'm not a Slackware user myself, but there are many Slackware users her=
e=20
(though the holidays may keep them away from email for the next little=20
while). If I can't answer you after you provide the additional informat=
ion,=20
I'm sure one of them will be able to after seeing it. I should mention =
that=20
Slackware is in many ways different from the other main Linux distros, =
so=20
the remainder of what follows is something of a guess on my part, based=
 on=20
the way Debian, the distro I use, does things.

I'm not sure how Slackware sets up networking these days, but the usual=
 way=20
with Linux is to put the information needed to set up an interface in=20
/etc/networks/interfaces ... your NIC would be entered there as eth0.=20
You'll enter either the usual sorts of info about IP address, netmask,=20
gateway, and such, or you will enter here that the interface gets=20
configured by DHCP (depending on how your network is actually set up).

If you are entering the information by hand, then you'll also want to e=
nter=20
the IP addresses of the DNS servers in /etc/resolv.conf ... if you are=20
using DHCP, then the DHCP client (which might be pump, dhclient, or dhc=
pcd)=20
can update this file from the lease info it gets.

The boot/init process should use this information to set up your=20
networking. If not, you can (usually) use the command, as root, "ifup -=
a"=20
to start networking manually.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
