From: Kurt Kehler <kmk@pa.net>
Subject: Re: Groff Print-out
Date: Sat, 12 Oct 2002 12:48:18 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0210121215380.179-100000@darkstar.example.net>
References: <200210120805.g9C85Ce04963@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210120805.g9C85Ce04963@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux <linux-newbie@vger.kernel.org>


On Sat, 12 Oct 2002, Peter wrote:

> Hi,
>
> I am using groff to print-out books I download with kgutenbook program since
> groff has a pleasant font and most important prints longer lines than all
> other text print programs I tried (emacs, vim, gedit, kedit, xedplus),
> therefore, fewer pages to print.
>
> Groff has 2 drawbacks, a) it does not number the pages and b) does barely
> advance at the end of the page.
>
> Can that be somehow corrected, may be with a script?
>
> The command I give is: groff file | lpr

Try: groff -ms file | lpr

I found these downloadable documents to be helpful with groff:

Troff User's Manual (Kernighan, Ossanna)
A TROFF Tutorial (Kernighan)
Typing Documents on the UNIX System: Using the -ms Macros with Troff
    and Nroff (Lesk)
Tbl -  A Program to Format Tables (Lesk)

I don't have the URL anymore but they were all on the same web page.
Perhaps adding Bell Laboratories to the search will help.

Hope this helps.

Kurt Kehler

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
