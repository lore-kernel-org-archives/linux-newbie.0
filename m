From: Chuck Gelm <chuck@gelm.net>
Subject: Re: Sequence of events at init (was boot)
Date: Thu, 12 Oct 2006 18:54:54 -0400
Message-ID: <452EC7BE.5020800@gelm.net>
References: <116946366609.20061012171553@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <116946366609.20061012171553@wa5rrh.us>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jim Reimer <jdr@wa5rrh.us>
Cc: linux-newbie@vger.kernel.org

Jim Reimer wrote:

>Ray Olszewski wrote:
>
>  
>
> <snip>
>
>>2. I believe FC4 keeps its init scripts in /etc/init.d . Have you grep'd
>>"jstarrc" in that directory? More basically, have you grep'd "jstar"?
>>For this kind of problem grep'ing is better than "looking".
>>    
>>
>
>"grep -iR jstar *" while in /etc shows no occurances of jstarrc.
>  
>
Try it again, but in /etc/init.d

/etc/init.d ; Ray suggested
/etc         ; You used

or

# grep -iR jstar /etc/init.d

HTH, Chuck

 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
