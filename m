From: Ray Olszewski <ray@comarre.com>
Subject: Re: keeping legitimate users out of public_html
Date: Mon, 20 Sep 2004 10:31:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040920102828.01f3fba0@celine>
References: <5.1.0.14.1.20040915100132.01f29c78@celine>
 <5.1.0.14.1.20040915100132.01f29c78@celine> <fc.004c4e0000637dea004c4e00006307dc.637dfd@palmertrinity.o
 rg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e0000637dea004c4e00006307dc.637dfd@palmertrinity.o
 rg>
References: <5.1.0.14.1.20040915100132.01f29c78@celine>
 <5.1.0.14.1.20040915100132.01f29c78@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:49 PM 9/20/2004 -0400, William Stanard wrote:
>[...]
>Thank you very much for the reply. I am using what you said and what
>Stephen posted to solve the problem.... but, and this seems so simple, I
>am embarrassed to ask, how do I determine what userid apache is running
>under?

Questions are always simple to people who already know the answers. To 
others, they are often hard. In your case, you can check this with the "ps" 
command. If the app name is actually apache (it usually is these days, 
though older versions sometimes ran under the name httpd), this will find it:

         ps aux | grep apache

The userid will be the leftmost column.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
