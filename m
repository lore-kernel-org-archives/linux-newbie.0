From: Eugene Teo <eugene.teo@eugeneteo.net>
Subject: Re: IP aliasing
Date: Wed, 18 Jun 2003 22:27:49 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030618142749.GD610@eugeneteo.net>
References: <20030618140305.73398.qmail@web20512.mail.yahoo.com>
Reply-To: Eugene Teo <eugene.teo@eugeneteo.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030618140305.73398.qmail@web20512.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org, lvs-users@linuxvirtualserver.org

Hi,

A little off-topic, but...

you don't have to enable ip alias. you can simply use
(1) ifconfig or (2) iproute2 tool.

iproute2's ip command is more convenient.

464  # ip link set dev $DEV up
465  # ip addr add dev $DEV w.x.y.z/24
466  # ip addr add dev $DEV p.q.r.s/16
467  # ip route add $DESTINATION via $GATEWAY src p.q.r.s 

Eugene
-- 
Eugene TEO @ Linux Users Group, Singapore <eugeneteo@lugs.org.sg>
GPG FP: D851 4574 E357 469C D308  A01E 7321 A38A 14A0 DDE5 
main(i){putchar(182623909>>(i-1)*5&31|!!(i<7)<<6)&&main(++i);}

<quote sender="Ravi Kumar Munnangi">
> I want to give more than one IP addresses to my NIC.
> For this we have to enable the feature of IP alias
> when configuring the kernel and recompile it.
> Is there any way to check if the option is already
> checked or not?
> My next question is,
>   After reconfiguring and recompiling, how can I give
> IP addresses(aliases) to NIC?
>   please tell me the commands to be used.
> 
>   Ravi kumar
> 
> __________________________________
> Do you Yahoo!?
> SBC Yahoo! DSL - Now only $29.95 per month!
> http://sbc.yahoo.com
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
