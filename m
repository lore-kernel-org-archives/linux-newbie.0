From: Ray Olszewski <ray@comarre.com>
Subject: Re: leading spaces in a text file.
Date: Fri, 23 Aug 2002 23:27:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020823232257.02269010@celine>
References: <20020823.235123.-3790865.3.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020823.235123.-3790865.3.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

At 11:51 PM 8/23/02 -0700, Matthew Stapleton wrote:
>At the beginning of each line there are leading spaces that i wish to get
>rid of.
>
>Something like the following:
>
><leading spaces><line content>
><leading spaces><line content>
><leading spaces><line content>
><leading spaces><line content>

Oh. Every *line* is quite different from every *sentence*. Still, assuming 
the file uses Unix-style newlines, something about like

                 tr "\n " "\n"

should get rid of the last one after you've used whatever you already use 
to reduce the multiple spaces to one.

I say "about like" because the cli command tr has less flexible pattern 
specification than the Perl-command tr, so I may have the details wrong ... 
but the basic idea is about right.


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
