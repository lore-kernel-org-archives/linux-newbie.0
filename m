From: Jeff Woods <Kazrak+kernel@cesmail.net>
Subject: Re: where do folders reside on partition
Date: Thu, 25 Aug 2005 00:17:23 -0600
Message-ID: <6.2.3.4.0.20050825000847.04546398@no.incoming.mail>
References: <20050825055430.80228.qmail@web40627.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050825055430.80228.qmail@web40627.mail.yahoo.com>
References: <20050825055430.80228.qmail@web40627.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: rekha vn <vidiyala_r@yahoo.com>
Cc: linux-newbie@vger.kernel.org

At 8/24/2005 22:54 -0700, rekha vn wrote:
>how can i know the hard disk partition in which the various folders 
>reside? the "find" command is giving only the path and not the 
>partition on which the folder resides.

Use the "df" (as in: disc free-space) command. Try:

$ df path/to/file
$ man df
$ info df

--
Jeff Woods <kazrak+kernel@cesmail.net> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
