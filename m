From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: AbiWord, Text and HTML??
Date: Mon, 13 Feb 2006 09:38:13 -0500
Message-ID: <20060213143813.GA1135@lnx2.w8mch.ampr.org>
References: <20060212181536.GA2276@lnx2.w8mch.ampr.org> <43EFB2C5.5020409@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <43EFB2C5.5020409@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 02-12, Ray Olszewski wrote:
> Hal MacArgle wrote:
> >Greetings: A problem importing a previously composed ascii text file
> >with jstar (joe) or, probably, any standard Linux text editor:
> >
> >I had a single need to convert this to html and found that AbiWord
> >was quite easy:
> >
> >$ abiword --to=html filename.txt > filename.html.
> >
> >The trouble is; viewing filename.html with lynx or links it's double
> >spaced.. I thought 'no problem,' we have the standard end of line
> >thingy so I'll just edit filename.html substituting a space for the
> ></p> entries... Oh yeah--grin--lynx and links still view it double
> >spaced.. I tried several other 'fixes' to no avail.. Some crash and
> >burn..
> >
> >Retyping the entire ascii text file into AbiWord and saving as a html
> >file is fine, but I much prefer composing all files with a CLI
> >editor.. Call me old fashioned?? Whatever.. I used WordStar for too
> >many years I guess... (Failing eyes doesn't help) <grin>
> >
> >Any suggestions? TIA.
> 
> This sounds like a famirly conventional EoL (Cr vs LF) problem to me. 
> You should look at the problem file in some hex editor (e.g., hexer, 
> hexedit) and see what actual characters are at the ends of the lines.
> 
> Or, if you like, send me (off-list) a short sample (filename.txt and the 
> corresponding filename.html) and I'll take a look at it.
> 
> Yeah, I used Wordstar too. These days it's vi on Linux and WordPad on 
> Windows. Occasionally OpenOffice, but only when I must.
> 
> Guess us fogies have to stick together.

	We're outnumbered... <grin> This is a _real_ education..
Slackware bundles 'hexdump' but, using it, I long for the old Norton
hex editor from Dos, that screen printed ascii as well as hex.. To
make matters worse; hexdump lists in groups of four characters in
_little endian_ notation.. That was a head scratcher... Worst of all;
where I expected an 0x0a/0x0d combination, it was a mere 0x20??? Too
much automation for this cat.. If I replaced all the SP's, I'd really
be in the soup... There has to be some shenanigans in the way I did
it.. BTW; Jstar (Joe) uses WordStar commands as does 'E3.' IIRC
though there was a problem with the .deb version I tried on a Woody
machine.. Forget now..

	Cracking the HTML book I decided to bite the bullet and
prepare a html template with the minimum entries and go from there,
even though it means many <p> </p> combinations..  Meanwhile Peter
suggested txt2html that I fetched, but it's PERL and linuxpackages
has no Slackware .tgz that I could find.. The README with
txt2html.tar.gz means I, now, have to crack the PERL books...

	Appreciate!! The learning curve is alive and well..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
