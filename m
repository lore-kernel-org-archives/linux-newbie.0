From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Linux firewall question
Date: Tue, 16 Apr 2002 10:20:22 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02041610202202.03753@unix.pa3gcu>
References: <F4D3DB9A18752A4F99FD880ABC54071707027F@ccdc-exchg.careercommunity.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC54071707027F@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sridhar J <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

On Tuesday 16 April 2002 06:50, Sridhar J wrote:
> Hi
>
> I read this somewhere. Can you tell me how to recompile the kernel. Assume
> that I use Red Hat Linux.
>
> "First of all, make sure that the Linux kernel supports Advanced Routing.

CONFIG_IP_ADVANCED_ROUTER  say yes to it.
You will also get a few more options, if you dont know what its all about hit 
the ? key, a short description will then be presented, that is under 'make 
config'

> The standard RedHat 2.2.14 kernel doesn't, so a recompile is necessary.
> Configure the kernel as an Advanced Router and enable all the Quality of
> Service options."

I suggest you read /usr/src/linux/Documentation/Configure.help
All options are explained there.

>
> Also, what is ipchains and is it available on every distro?.

ipchains is in every distro i know of, you can create and manipulate firewall 
rules with it in 2.2.xx kernels.

>
> Regards
> Sridhar

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
