From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: leading spaces in a text file.
Date: Sat, 24 Aug 2002 12:46:35 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208241646.g7OGkZi24408@hartford-hwp.com>
References: <20020823.232133.-3790865.0.matthewstapleton@juno.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020823.232133.-3790865.0.matthewstapleton@juno.com> (message
	from Matthew Stapleton on Fri, 23 Aug 2002 23:21:28 -0700)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: matthewstapleton@juno.com
Cc: linux-newbie@vger.kernel.org

Matthew,

I don't know what you use as a text editor, but if it has a search and
replace, you can readily remove multiple spaces. For example, I run
emacs and use replace-string to replace a fixed number of multiple
spaces at the beginning of each line with null.

This does not work with a single space at the start of each line, for
replacing a single space with null removes the spaces between words. I
don't know how to handle this situation.

Haines Brown  

> Date: 	Fri, 23 Aug 2002 23:21:28 -0700
> X-Juno-Line-Breaks: 6-13
> From: Matthew Stapleton <matthewstapleton@juno.com>
> Sender: linux-newbie-owner@vger.kernel.org
> X-Mailing-List: 	linux-newbie@vger.kernel.org
> 
> i have been formatting some texts for an online archive of e-texts. 
> every once and a while i encounter a file that has leading spaces in
> front of each sentence.  to remedy this problem i have used the 'tr'
> utility to squeeze multiple occurrences of spaces.  this works very
> nicely with the exception that the output file has a single leading space
> at the beginning of each sentence. is there a better way of doing this or
> of finishing this job?
> 
> thanks
> 
> Matthew Stapleton
> ====================================
> http://webpages.marshall.edu/~staple12
> Resistance is Futile!
> ====================================

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
