From: jude dashiell <dashielljt@gmpexpress.net>
Subject: Re: [OT] Development workflow
Date: Wed, 2 Jul 2003 18:52:54 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0307021840360.2279@localhost>
References: <3EFFE4A0.1070800@shaw.ca> <20030702184108.GRUV2652.mta03-svc.ntlworld.com@there>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030702184108.GRUV2652.mta03-svc.ntlworld.com@there>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Kelly <bilbo@waitrose.com>
Cc: Chris Rose <offline@shaw.ca>, linux-newbie@vger.kernel.org

Also, remember structured programming is your friend!  Many small files
preferably with no more than one task in them each with commenting can be
used to build large projects.  The advantages of doing this are a few.
First, you may be able to write a wrapper program that you can then use to
test your smaller files with independently of the whole system.  Second,
when something blows up you'll know which small program broke and won't
have to go looking through 35,000 lines of code to find that error, it'll
be in a file with no more than 50 active lines of code.  Find errors
faster you can fix them faster too.  Last and probably least important is
that once ou write the small programs provided you write them generally
enough you'll be able to steal from them in the future and make future
projects come up that much faster.  If you continue to add to your
library, there's a higher and higher likelyhood what's already in it gets
used and used again during your career.  Use a hierarchy input/output
chart to document relationships of the small files one to the other.  I
know, people who hate Cobol laugh at those things but if you take the time
to write out your hipo chart first you'll have first descriptions for
everything in your system you can copy into each small file as comment
headers.  If you break down and put a uses: and returns: line inside each
of the boxes on the hipo chart you'll almost have interface specifications
also written out.


-- Registered as user #315636 with the Linux Counter,
http://counter.li.org/!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
