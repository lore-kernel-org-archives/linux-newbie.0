From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Strange Boot behavior
Date: 22 Aug 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200308220328.h7M3SRlo021963@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

This sounds like a simple - but nevertheless tricky - cable-&-jumper
puzzle; if "new drive" is master and sits on the first IDE connector of
the motherboard, then "old drive":

- either must be jumpered "master" when it sits on the second MoBo IDE
connector; it's the "second primary" disk in this case - though note
that it can be "seen" by the BIOS if it's jumpered as "slave" (in this
case, however, I don't know enough about GRUB's behaviour, and if it
does accept this situation - LILO does),

- or must be jumpered "slave" when it sits at the intermediary
connector on the cable from the 1.st IDE MoBo connector to the "new
drive" which should be then at the _far_ end of that cable (and "new HD"
_must_ be jumpered "DS/master" in this case, not (mostly) factory set
"CS"(cable select)".

Hmm - how did you manage to "transfer files" when both drives were
indeed plugged in ?
(Was that when you told the BIOS to boot from "D" - presumably the "old
HD" - and not from "C" ?  This would work to boot from the "old", as
some BIOSes are a bit more forgiving and just take _any_ "next" HD they
find as "D" after a first/primary "C".  [It's your headache to sort out
the Linux drive/partinion names thereafter, <bg>.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-08-21
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
