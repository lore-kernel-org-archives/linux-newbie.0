From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: question on "find"
Date: Sun, 18 Apr 2004 18:17:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40832899.1000405@bcgreen.com>
References: <Pine.SOL.4.56.0404181942470.9002@pollux.cse.buffalo.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.SOL.4.56.0404181942470.9002@pollux.cse.buffalo.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Tony Gogoi <tgogoi@cse.Buffalo.EDU>, linux-newbie <linux-newbie@vger.kernel.org>

The easiest would be to just 'find . '
That tells it to search in the current dirctory (and also
find hidden files in the current directory, which "find *" won't)

I don't see why  "Doc - PDF" would cause you
problems, but I can see "-pdf doc" causing a problem,
because the leading '-' makes the filename look like a
find search option (and all other filenames after that
are evaluated in that context).

That can be worked around by using './*' instead of '*'
(replace '*' with any globbing pattern)
This would keep the first character of a filename from
ever being a "-"

Tony Gogoi wrote:
> I have another question.
> 
> "find ./*" displays recursively all files in this and its sub-directories.
> 
> However for some files that were ftp'ed from a Windows system eg.
> something like in the one of the directories
> "(Doc - PDF) My Document.pdf"
> would cause "find *" to display "invalid predicate...." .
> How can I overcome this problem ?
> 
> Thanks.
> 
> Thanks Mike and Raju for ur earlier responses.
> 
> 
> 
> Tony Gogoi
> -
> To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
