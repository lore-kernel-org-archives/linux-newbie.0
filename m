From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: mac address change on an eth alias
Date: Tue, 17 Dec 2002 23:55:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212172355.32568.g38@rdsbv.ro>
References: <200212172207.22480.g38@rdsbv.ro> <02121721144904.00388@unix.pa3gcu>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02121721144904.00388@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

richard, 

thanks for the answer; it is as you said, except I didn't manage to put 2 
different macs

ifconfig eth0 hw ether 00:02:44:11:AA:AA
ifconfig eth0:1 hw ether 00:02:44:11:AA:AB
ifconfig eth0 some_IP netmask 255.255.255.0
ifconfig eth0:1 123.123.123.123 netmask 255.255.255.0

and the result is both have the same mac (the last one issued with ifconfig)

so I didn't get what I wanted - the mac of the alias being different than the 
interface's; should I presume "no can do" ?

thanks,

petre

On Tuesday 17 December 2002 23:14 Anno Domini, pa3gcu wrote using one of his 
keyboards:
> On Tuesday 17 December 2002 20:07, Petre Bandac wrote:
> > root@k:~# ifconfig eth0:1 123.123.123.123 netmask 255.255.255.0 hw ether
> > 00:E0:7D:02:C6:0C
> > SIOCSIFHWADDR: Device or resource busy
> > root@k:~#
> >
> > am I trying to do something impossible or is it only my NIC (Realtek
> > 8139) that can't do it ?
>
> AFAIK yes, at least the way you are doing it, you can however change a MAC
> adress before configuring the card.
>
> ifconfig eth0 00:E0:7D:02:C6:0C
> ifconfig eth0 123.123.123 netmask 255.255.255.0
>
> So what i am saying is, you cant change the MAC address when a IP# is
> assigned.
>
> I tested it on my eth0 interface but without aliasing, but i doubt if that
> is an issue here.
>
> > I want to have 2 ip's on the same interface - but with 2 different macs
> > ... why? because this is my testing server and, among others (dhcp, bind,
> > sendmail/postfix, asterisk, etc) I want to actually see how a mac address
> > can be changed ... if it's possible
>
> Down the IFC's, change the MAC(s), then configure the card and its aliases.
>
> > thank you for you patience,
> >
> > petre

-- 
 23:50:25 up  7:20,  1 user,  load average: 0.02, 0.06, 0.08

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
