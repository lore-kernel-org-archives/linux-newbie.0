From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Ping a DNS???
Date: Fri, 10 Jan 2003 15:31:52 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03011015315202.31603@unix.pa3gcu>
References: <20030110090952.A303@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030110090952.A303@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hal MacArgle <haltec@iceweb.net>, linux-newbie@vger.kernel.org

On Friday 10 January 2003 14:09, Hal MacArgle wrote:
> Greetings: Contemplating an ISP change I thought I'd ping the present
> thence the proposed DNS's to evaluate the round trip time..
>
> The present, 204.97.4.2, returned it's RTT to be expected.. The
> proposed, 65.196.16.3, returned "100% packet loss" - not expected.

You forgot one thing, some ISP's block pings, have you tryed to actually use 
65.196.16.3 as your DNS,?? i have and its quick...

Rest deleted, all i did was add 'nameserver 65.196.16.3' as first line to my 
/etc/resolv.conf

BTW;

Your replt too field is now ok, but i guess you knew that.

>
> TIA and thanks,
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
> 	       haltec@iceweb.net | w8mch@iceweb.net
>                 Proprietary  Formats  Unacceptable

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
