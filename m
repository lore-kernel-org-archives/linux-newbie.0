From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: Red-Hat Hardening
Date: Fri, 17 May 2002 20:22:12 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205171722.g4HHMII04077@g38.rdsbv.ro>
References: <F4D3DB9A18752A4F99FD880ABC5407179D132F@ccdc-exchg.careercommunity.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D132F@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sridhar J <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

for general culture:

- www.bastille-linux.org - RH only
- www.e-smith.org
-http://people.unix-fu.org/andreasson/iptables-tutorial/iptables-tutorial.html

as for the firewall - there are some things you should keep in mind when 
setting one:

1 - ipchains or iptables ?

2 - what services I keep running ? [do not start services you don't need]

3 - what ports are open on my server ? [you could use nmap or any scanner to 
find out] - and block them unless needed

4 - portsentry & logcheck are two very useful tools to find any attempt to 
attack your machine

5 - always keep an eye on the latest exploits - especially the sshd ones.

without being an expert, I hope the above will help you


On Friday 17 May 2002 08:47, Sridhar J wrote using one of his keyboards:
> Hi
>
> I have installed RH 7.2 on a PIII system successfully. Now, I plan to run
> it as a webserver with Apache. Now, how do I harden the OS, so as to have
> the maximum security. Buffer overflows, DOS attacks etc have to be
> protected against. I don't know much abt Linux, although I am trying to
> learn. I especially become confused by the number of files that have to be
> changed, such as /usr etc.
>
> If someone can write a step-by-step guide to setting up a firewall, install
> snort or a similar IDS, configure variuos options, I will jump with joy. I
> also will prominently display his name on my site,
> http://sridharj.focusindia.com and convert this guide into a tutorial,
> submit it to some of the best web sites in the world.
>
> I am a Technical Analyst and Writer and have a good rapport with
> SecurityFocus.com and a couple of such sites.
>
> Regards
> Sridhar
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
  8:05pm  up 31 min,  2 users,  load average: 0.04, 0.12, 0.16
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
