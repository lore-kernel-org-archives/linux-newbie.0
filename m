From: ichi@ihug.co.nz
Subject: Re: Perl
Date: Thu, 05 Dec 2002 06:56:20 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DEEF894.77939240@ihug.co.nz>
References: <019001c29bac$8f711bf0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

Paul Kraus wrote:
> 
> How can I make this assignment in one statement. 
> I know its going to be something easy.
> $path=$5;
> $path=~s/ /\\ /g;

I don't understand.  Is this part of a bash script?
It looks like you a trying to assign the fifth parameter 
(path=$5) to a variable named path (which BTW is not the
PATH) and then manipulate it in some way (something to do 
with \ I think).

Perhaps this is some language that I am unfamiliar with?
If so, I apologize.  However, if is bash, I suggest you 
explain in words what you want to do, and I will try to
script it.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
