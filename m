From: Ray Olszewski <ray@comarre.com>
Subject: Re: leading spaces in a text file.
Date: Fri, 23 Aug 2002 20:45:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020823203142.0226c130@celine>
References: <20020823.232133.-3790865.0.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020823.232133.-3790865.0.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

At 11:21 PM 8/23/02 -0700, Matthew Stapleton wrote:
>i have been formatting some texts for an online archive of e-texts.
>every once and a while i encounter a file that has leading spaces in
>front of each sentence.  to remedy this problem i have used the 'tr'
>utility to squeeze multiple occurrences of spaces.  this works very
>nicely with the exception that the output file has a single leading space
>at the beginning of each sentence. is there a better way of doing this or
>of finishing this job?


Could you take another shot at describing the problem? Do you perhaps mean 
leading spaces in the front of each *paragraph* (that is, indenting) rather 
than at the beginning of each *sentence*? Normal writing, like your message 
and my reply, has a space in front of each sentence that is *not* the start 
of a new paragraph (that is, a space between the prior sentence's closing 
punctuation and the first character of the new sentence), so I'm having 
trouble seeing that pattern as a problem needing correcting.

-IF- you do mean paragraph, and -IF- the text skips a line between 
paragraphs (and if it uses Unix-style newlines), I would look for the 
pattern "\n\n " and replace it with "\n\n" (after you have done the 
multi-to-single-space pass, of course). If it does not skip lines, then "\n 
" to "\n" should work. tr should be able to do this (I know Perl's tr 
command, which I've used much more then the standalone app, can do it).


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
