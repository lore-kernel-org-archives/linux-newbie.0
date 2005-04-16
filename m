From: James Miller <jamtat@mailsnare.net>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 14:44:17 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504161408350.5717@localhost.localdomain>
References: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 16 Apr 2005, James Miller wrote:

> I don't really need file permissions information, so using the -l switch is 
> overkill. But so far I have not determined how I can get the time information 
> I need without the other, file permission info.

I've found the -t switch to give me the time info I need without the 
permissions info. ls -t lists files in the order created, oldest last, so 
far as I can tell.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
