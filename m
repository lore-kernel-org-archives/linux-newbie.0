From: Ray Olszewski <ray@comarre.com>
Subject: Re: Permissions changing
Date: Sat, 20 Jul 2002 09:14:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020720091409.024ab480@celine>
References: <200207202141.42777.natarajan_k@hotpop.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207202141.42777.natarajan_k@hotpop.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: natarajan_k@hotpop.com, Linux Newbie <linux-newbie@vger.kernel.org>

At 09:41 PM 7/20/02 -0400, Natarajan K wrote:
>HI,
>         I am using  Mandrake 8.2. I allowed the mail log file to be read by
>everybody. But the permissions were reverted soon without my knowledge. Is
>any daemon running by default that changes the permissions of important
>files?


I don't know offhand what Mandrake runs by default ... but see if logrotate 
is running. It *might* cause this sort of change to happen.



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
