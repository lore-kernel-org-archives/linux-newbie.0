From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: LAN
Date: Fri, 26 Dec 2003 09:32:56 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200312260932.56772.pa3gcu@zeelandnet.nl>
References: <20031226064427.267.qmail@web21403.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031226064427.267.qmail@web21403.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

On Friday 26 December 2003 07:44, Jose Colmenares wrote:
> I just installed Slackware. It's working fine and
> smooth. I also have three machines runing Windows (one
> XP and two 98). These are conected through a LAN. =BFHow
> do I configure my new linux system to recognize the
> network and comunicate to it? it does not even
> recognize the LAN card. =BFdid I miss something during
> the configuration?

Yes possably you did miss configuring the LAN when you installed slack,=
 you=20
also missed providing us with helpfull information.
Name and type of card. ?
{Slack version, 9.1 has a different config file for LAN networking.}
Results of ifconfig -a
Does your lan use a dhcp server for configuration, or do you set your o=
wn=20
address?.

The command 'netconfig' may help you.
Setting your device driver in /etc/rc.d/rc.netdevice should take care o=
f=20
loading the module for the card.

Thats about all i can say because you failed to provide the info needed=
 to=20
give a direct answer.

>
> thanks.


--=20
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
