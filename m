From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: mac address change on an eth alias
Date: Tue, 17 Dec 2002 21:14:49 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02121721144904.00388@unix.pa3gcu>
References: <200212172207.22480.g38@rdsbv.ro>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212172207.22480.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Petre Bandac <g38@rdsbv.ro>, linux-newbie@vger.kernel.org

On Tuesday 17 December 2002 20:07, Petre Bandac wrote:
> root@k:~# ifconfig eth0:1 123.123.123.123 netmask 255.255.255.0 hw ether
> 00:E0:7D:02:C6:0C
> SIOCSIFHWADDR: Device or resource busy
> root@k:~#
>
> am I trying to do something impossible or is it only my NIC (Realtek 8139)
> that can't do it ?

AFAIK yes, at least the way you are doing it, you can however change a MAC 
adress before configuring the card.

ifconfig eth0 00:E0:7D:02:C6:0C
ifconfig eth0 123.123.123 netmask 255.255.255.0

So what i am saying is, you cant change the MAC address when a IP# is 
assigned.

I tested it on my eth0 interface but without aliasing, but i doubt if that is 
an issue here.

> I want to have 2 ip's on the same interface - but with 2 different macs ...
> why? because this is my testing server and, among others (dhcp, bind,
> sendmail/postfix, asterisk, etc) I want to actually see how a mac address
> can be changed ... if it's possible

Down the IFC's, change the MAC(s), then configure the card and its aliases.

>
> thank you for you patience,
>
> petre

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
