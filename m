From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Fetchpop Problem
Date: 07 Oct 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210071243.g97Ch1802214@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Yes, there is an problem with an increasing number of mail troubles.
No, this is not a Fetchpop problem: I see it with all sorts of mail
transport agents (MTAs) not only under Linux.

My suspicion for the reasons go towards a specific recent version of
the Outhouse Excremental Exploder, perhaps even only the Mac version of
it, in combination of the send-MTA used therewith; I think it may go
like this:

While the mail composer forcibly changes/remaps all 8-bit characters
in a charset used, it doesn't do so with an imported/pasted signature
or likewise element.  The send-MTA though then chops _all_ 8-bit chars
in an - as illegal as erronous and wrong - manner[*] to make it 7-bit
"compliant". This is especially critical when the 8th bit in the 128 to
159 (dec) range of charsets is cut; the result is that illegal, 7-bit
"low ASCII" chars are created with these remains, and sent.

However, all decently behaving, and truely RFC-compliant MTAs -
(a.) are 8-bit-transparent, i.e., don't change/eat/suppress 8-bit chars,
as MS void professors do;
(b.) rely on some combination of "low-ASCII" (dec 0 to 31) chars for
control functions;
(c.) rely on the RFCs and other "industry"-wide conventions (to which
indeed everybody keeps, except MS) that such low-ASCII chars are not to
be included in a mail "body".  (This is the whole point, BTW, of having
UU- or Base-64 encoded "attachments" at all, in order to pack and
transport binary data like program code or images through eMail.)

So more and more of the decent, standards-complying MTAs, well-behaving
over the years, will get into trouble.
(BTW, you wouldn't see the culprit - except with capturing the complete
packet stream -because the receiving MTA precisely hangs at that point
and cannot print it.)

The way to avoid this, besides of not using that crooked gear in the
first hand, would be to have all SMTP servers to screen mail bodies;
which they do not, presently, as they are nicely behaving and rely on
standards.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-10-07
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
