From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: telnet,rsh,rexec
Date: Sun, 1 Feb 2004 20:10:53 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402012010.53988.pa3gcu@zeelandnet.nl>
References: <20040201163539.67005.qmail@web60607.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040201163539.67005.qmail@web60607.mail.yahoo.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>, linux-newbie@vger.kernel.org

On Sunday 01 February 2004 17:35, Ravi Kumar Munnangi wrote:
> hi users,
>
>  My system IP is 172.31.19.22.
>  When I try to telnet to my system, I get
>
>    Trying 172.31.19.22...
> Connected to localhost.localdomain (172.31.19.22).
> Escape character is '^]'.
> Connection closed by foreign host.
>
>
> Can any one guess the reason.

I gave up guessing years ago, give us more infomation, that way we can help 
you otheriwse no help is possable without guessing witch is AFAIK bad.

1) Disto version and number.
2) Output of netstat -l
3) Output of ipchains -nL or iptables -nL (which ever is in use)
     You see i have to guess and give more than one command because you did
     not supply information.
4) Relevant parts of /var/log/messages or syslog, once again you did not say 
     which distro you use so i have to give multiple choose questions.

> Can the reason be something related to security.

Possably.

> How can I change the default security settings?

Who knows thats distro indeipendant..

> ON my system the security level is always showing
>  as high and tried to change it to medium and
> customise
> But it is always at high level. How can I change this?

God only knows, no info period.....

>
> Thanks in advance,
> ravikumar
>
--
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
