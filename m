From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: mac address change on an eth alias
Date: Tue, 17 Dec 2002 22:06:16 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02121722061606.00388@unix.pa3gcu>
References: <200212172207.22480.g38@rdsbv.ro> <02121721144904.00388@unix.pa3gcu> <200212172355.32568.g38@rdsbv.ro>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212172355.32568.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Petre Bandac <g38@rdsbv.ro>, pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

On Tuesday 17 December 2002 21:55, Petre Bandac wrote:
> richard,
>
> thanks for the answer; it is as you said, except I didn't manage to put 2
> different macs
>
> ifconfig eth0 hw ether 00:02:44:11:AA:AA
> ifconfig eth0:1 hw ether 00:02:44:11:AA:AB
> ifconfig eth0 some_IP netmask 255.255.255.0
> ifconfig eth0:1 123.123.123.123 netmask 255.255.255.0
>
> and the result is both have the same mac (the last one issued with
> ifconfig)
>
> so I didn't get what I wanted - the mac of the alias being different than
> the interface's; should I presume "no can do" ?

I myself have never used aliasing, i do however need to spoof my MAC 
sometimes on my laptop to be able to use it on other locations for my work.
However thats beside the point, as far as i can see if you set a different 
IP# then the need for another MAC is (AFAIK) not nessasary.
If ARP's are a problem then setting static arps may be an answer, once more i 
have no experiance with alising, possably Ray may have some advise for you.

>
> thanks,
>
> petre
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
