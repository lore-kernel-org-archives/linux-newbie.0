From: Ray Olszewski <ray@comarre.com>
Subject: Re: user/e-mail name
Date: Wed, 03 Mar 2004 07:56:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040303075430.01ff0478@celine>
References: <20040303074855.B8A553ACF@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040303074855.B8A553ACF@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:48 PM 3/3/2004 +0800, Peter wrote:
>Hi,
>
>In Slackware9.1 my user name is peter and my e-mail address is heisspf@isp.net
>
>Apparently mail I send arrives From: peter@isp.net. Therefore, when the
>recipient makes a "reply" the mail bounces since naturally peter@isp.net is
>not found.
>
>My mail program is exmh.
>
>Can that be corrected w/o changing my user name?

Richard and Hal gave you good technical replies, but they missed one 
possibility. This is a classic case for the use of a Reply-to: header in 
your messages. You might want to see either if exmh supports that option, 
or if you can substirute a different MUA that does.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
