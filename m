From: Heimo Claasen <hammer@revobild.net>
Subject: Re: related issue (was: Dvorak Console)
Date: 28 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209272309.g8RN9dv13160@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On a related issue - is there any means to switch charsets (for all
sorts of screen printing), and this, back-&-forth "on the fly" ?
At least, in text/console mode ?

REM: most "garbled" screen presentation of text has the simple cause
in different charsets employed, sepectively, (a.) in the (txt) file,
(b.) for the system/screen char setting to present it.
(This concerns 8-bit charsets, and there, the full-8-bit range; most
frequent is the problem of "text" from a Windows-machine - the
M$-declaration of "ISO-8859-1" is false, it does _not_ comply - read on
any other, _including_ those with correct ISO-8859-1 charsets set.)

Remapping could (and _should_, IMO) be an easy thing, with switching to
the right charset with reading/screen-printing that one piece (and then
switching back to the generally used charset).

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-27
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
