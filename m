From: "Enrique Nieves" <spanfax@charter.net>
Subject: Re: Newbie installation problem
Date: Sun, 4 Aug 2002 13:06:42 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001201c23bd9$4e6aa870$6401a8c0@ENRIQUE>
References: <Pine.LNX.4.21.0208040725520.30515-100000@Consulate.UFP.CX>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Riley Williams <Riley@Williams.Name>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


> Based on the information provided earlier, if the router can handle 100
> speed, then you are attempting to use 100baseTX ethernet, if not, you
> are attempting to use 10baseT ethernet.
>
> One final question: Am I right in assuming that you are trying to set it
> up with the AMD under Linux as the system that connects to the Internet,
> and both the WinXP machine and the laptop piggy-backing onto that
> connection?

The XP is the system that is connected to the internet, and I'm trying to
piggy back to that connection the AMD  box and the XP laptop.

>
> The reason I ask this is that on rereading your comments, I note your
> repeated reference to "LinkSys router" and I'm wondering if that's an
> ADSL router that forms your Internet connnection. If it is, then the
> advice to be given is rather different to the above, and the above
> advice should be ignored.

I have a Linksys Ethernet 10/100 Cable/DSL Router (BEFSR41 ver.2) with four
ports connected to a Shark Fin cable modem.
>
> In this event, please run the `netconfig` command but ensure that the
> "Use dynamic IP configuration" box IS checked. In this case, the values
> of the remaining fields are irrelevant and should be ignored. You also
> need to configure your router to enable the DHCP server and the NAT
> facilities therein, and it will then configure the IP addresses,etc, on
> all the systems on your network.
>
> Best wishes from Riley.

Thanks for your advice.

Enrique



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
