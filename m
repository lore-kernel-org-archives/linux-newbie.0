From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert PBM to ascii text??
Date: Thu, 11 Mar 2004 10:26:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040311152650.GB599@lnx2.w8mch.ampr.org>
References: <5.1.0.14.1.20040309070617.01fde278@celine> <5.1.0.14.1.20040308130547.01f63e50@celine> <20040308204535.GA1010@lnx2.w8mch.ampr.org> <5.1.0.14.1.20040308130547.01f63e50@celine> <5.1.0.14.1.20040309070617.01fde278@celine> <5.1.0.14.1.20040310071038.02022e28@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20040310071038.02022e28@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 03-10, Ray Olszewski wrote:
> At 08:59 AM 3/10/2004 -0500, Hal MacArgle wrote:
> [...]
> >> 1. Run a program that will scan to an image file, then a separate program
> >> that will do OCR on the scanned image.
> >
> >        Done - scan to PBM (P4) then run Gocr to get a bit mapped
> >file.. Trouble is; even using resolution 360, slow and a big PBM
> >file, the final copy is about 90% accurate and the original format of
> >the letter compromized losing paragraphs, offsets, indents, etc...
> >Taking the time to do all this plus fix up the immediate above would
> >take almost as long as manually re-typing the page..
> 
> Yes, this is always the problem with OCR. Back when I did a lot of it 
> (about 12-15 years ago, on a Macintosh), OCR packages included the "brag" 
> that they were 99% accurate. I, like any serious user, had no trouble 
> translating "99% accurate" to "an error every 3 lines of text" and was 
> unimpressed. For everyday use, OCR needs about "four 9s" of accuracy, 
> translating to one error every few pages of text.
> 
> If your 90% estimate is correct, it translates to (on average) several 
> errors per line of text, making the process close to worthless for you.
> 
> Of course, any OCR package is better on some images than others. I don't 
> know what your source pages look like. For example, serif fonts (e.g., 
> Times Roman, Century Schoolbook, Palatino) are generally easier to OCR well 
> than sanserif fonts (e.g., Ariel, anything with "sans" in the name). Fresh 
> printouts are better then third-generation Xeroxes. And so on.
> 
> I expect that you are at the point where you need help from someone with 
> real and current expertise in OCR work, preferably on Linux. That's not me, 
> and from the surrounding silence, I suspect it is not to be found on this 
> list.
> 
	Greetings: And your detailled comments most valuable as
usual.. It stands to reason the fonts must "match" the design.. I
just looked at my cheque book and the "crazy" numeral "style." I read
further that OCR's, even the pricey ones, have a real problem when
the text is in italics after a long run of "normal." The banking
system had better "match" eh??



> >        I fetched Clara but could only find a .rpm file, no tarball
> >could for Slackware, etc.. Slack has a rpm program but the
> >dependencies needed to extract looked like they were mostly Red Hat's
> >filenames..
> 
> Well ... a source .tgz can be downloaded from a link on this page --
>         http://www.claraocr.org/
> 
> (Thank you, Google).
> 
	I, of course, used google/linux but entered ocr and got the
"wrong" Clara site.. Thanks. I will try the tar ball but am
pessimistic of course.. Methinks Patrick at Slackware doesn't include
ocr in his packages for good reason...

Appreciate!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
