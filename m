From: Ray Olszewski <ray@comarre.com>
Subject: Re: AbiWord, Text and HTML??
Date: Sun, 12 Feb 2006 14:12:21 -0800
Message-ID: <43EFB2C5.5020409@comarre.com>
References: <20060212181536.GA2276@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060212181536.GA2276@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal MacArgle wrote:
> Greetings: A problem importing a previously composed ascii text file
> with jstar (joe) or, probably, any standard Linux text editor:
> 
> I had a single need to convert this to html and found that AbiWord
> was quite easy:
> 
> $ abiword --to=html filename.txt > filename.html.
> 
> The trouble is; viewing filename.html with lynx or links it's double
> spaced.. I thought 'no problem,' we have the standard end of line
> thingy so I'll just edit filename.html substituting a space for the
> </p> entries... Oh yeah--grin--lynx and links still view it double
> spaced.. I tried several other 'fixes' to no avail.. Some crash and
> burn..
> 
> Retyping the entire ascii text file into AbiWord and saving as a html
> file is fine, but I much prefer composing all files with a CLI
> editor.. Call me old fashioned?? Whatever.. I used WordStar for too
> many years I guess... (Failing eyes doesn't help) <grin>
> 
> Any suggestions? TIA.

This sounds like a famirly conventional EoL (Cr vs LF) problem to me. 
You should look at the problem file in some hex editor (e.g., hexer, 
hexedit) and see what actual characters are at the ends of the lines.

Or, if you like, send me (off-list) a short sample (filename.txt and the 
corresponding filename.html) and I'll take a look at it.

Yeah, I used Wordstar too. These days it's vi on Linux and WordPad on 
Windows. Occasionally OpenOffice, but only when I must.

Guess us fogies have to stick together.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
