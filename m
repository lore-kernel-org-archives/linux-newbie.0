From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: How do I see all my partitions?
Date: Wed, 18 Dec 2002 17:11:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E00F282.93C43803@gelm.net>
References: <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris <smarta55@comcast.net>
Cc: linux-newbie@vger.kernel.org

cat /var/log/messages|grep hd|grep "server kernel"|grep -v sectors

 Works for me.  However, I'm using a Slackware distribution.

HTH, Chuck


Chris wrote:
> 
> Hi, I'm a new Red Hat user and want to mount
> my winxp partition.  How do I display all the
> partitions, Win/Dos/Linux, in one place so I can
> give mount the correct partition name?
> 
> Thank you,
> Chris
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
