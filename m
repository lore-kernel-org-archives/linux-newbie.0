From: beolach@juno.com
Subject: Re: is there some ps-to-text extractor ?
Date: Thu, 31 Jul 2003 08:07:12 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030731.010712.2373.1019401@webmail01.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org


I haven't used most of these, so I can't recommend any one over
the others, but it looks like all of these should work.

GNU Ghostscript is distributed with several conversion tools,
including ps2ascii. However, in the ps2ascii(1) man page, it
says "ps2ascii doesn't look at font encoding, and isn't very
good at dealing with kerning, so for PostScript (but not
currently PDF), you might consider pstotext" and points to
<http://www.research.digital.com/SRC/virtualpaper/pstotext.html>.

Also look at PreScript <http://www.nzdl.org/html/prescript.html>,
the PDF Conversion module <http://sourceforge.net/projects/pdf995/>,
and maybe GemDoc <http://www.gemini1consulting.com/gemdoc/>, but
note that GemDoc is for MS Windows, and is not free (other than 14
day trial).

Conway S. Smith

--- Heimo Claasen <hammer@revobild.net> wrote:
> 
> The "pdftotext" application (part of the "xpdf" package) is a real
> blessing; it needs some post-editing but still gets better results 
> with
> extracting the contents than the very own Adobe "service" to strip 
> this
> idiot formatting.
> 
> Question now: Is there any "ps-to-text" converter existing which 
> would do
> this with postscript/ghostscript files ?
> (I dindn't get something meaningful from a web search.)
> 
> // Heimo Claasen // <hammer at revobild dot net> // Brussels 
> 2003-07-30
> The WebPlace of ReRead - and much to read  ==>  
> http://www.revobild.net
> 

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
