From: sumit kalra <i_am_sumit_kalra@yahoo.com>
Subject: Re: what do the dots mean?
Date: Sun, 4 Sep 2005 14:10:16 +0100 (BST)
Message-ID: <20050904131016.55217.qmail@web61015.mail.yahoo.com>
References: <dfeo9p$m08$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dfeo9p$m08$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: _z33 <timid.Gentoo@gmail.com>, linux-newbie@vger.kernel.org

I am not sure why you are not seeing the last dot. 

Okay, so when you remove the first dot, printf prints
the complete string which would have a newline
character (\n) as it's 25th element so the dot should
appear on the next line.

-Sumit

--- _z33 <timid.Gentoo@gmail.com> wrote:

> sumit kalra wrote:
> > Well, the first dot along with the 24 (%.24s) 
> > specifies to printf to print only 24 characters of
> the
> > string.
> > 
> > Second dot is a full stop after the string. :-)
> > 
> 
> Thanks for the info.
> 
> But in that case when you remove the first dot you
> should be able to see 
> the second dot for sure, right? But the moment I
> remove the first dot, 
> the second dot disappears from the output.
> 
> 
> _z33
> -- 
> I love TUX; well... that's an understatement :)
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
___________________________________________________________ 
How much free photo storage do you get? Store your holiday 
snaps for FREE with Yahoo! Photos http://uk.photos.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
