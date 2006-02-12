From: Hal MacArgle <haltec@kvinet.com>
Subject: AbiWord, Text and HTML??
Date: Sun, 12 Feb 2006 13:15:36 -0500
Message-ID: <20060212181536.GA2276@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Greetings: A problem importing a previously composed ascii text file
with jstar (joe) or, probably, any standard Linux text editor:

I had a single need to convert this to html and found that AbiWord
was quite easy:

$ abiword --to=html filename.txt > filename.html.

The trouble is; viewing filename.html with lynx or links it's double
spaced.. I thought 'no problem,' we have the standard end of line
thingy so I'll just edit filename.html substituting a space for the
</p> entries... Oh yeah--grin--lynx and links still view it double
spaced.. I tried several other 'fixes' to no avail.. Some crash and
burn..

Retyping the entire ascii text file into AbiWord and saving as a html
file is fine, but I much prefer composing all files with a CLI
editor.. Call me old fashioned?? Whatever.. I used WordStar for too
many years I guess... (Failing eyes doesn't help) <grin>

Any suggestions? TIA.

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
