From: Heimo Claasen <hammer@revobild.net>
Subject: Re: commport settings
Date: 31 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212310509.gBV58waw016418@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

In the meantime I have coombed one (Mdk) system installed really from
first to last byte - for even vaguely PPP-/Modem-relevant config files -
and tried all thinkable variations: _no_way_ to have it work, in
console mode, with the setting of /dev/ttyS3  (COM4) with IRQ 7.

Running "setserial /dev/ttyS3 irq 7" duely results in a correct
indication using "setserial /dev/ttyS3 -G" but this provenly does not
bring about the dialler, and pppd to actually use the correct interrupt
number - they stubbornly continue with the build-in wrong irq 3 and
promptly fail.

_Only_ work-around is running kppp (from running X, and having the
"setserial" command run before) - then, a mere modem query succeeds
even in setting the right values, and up to a next reboot, for using
the modem from the console !

I really would like to find an explanation for this.

// Heimo Claasen //<revobild at revobild dot net>// Brussels 2002-12-31
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
