From: Heimo Claasen <hammer@revobild.net>
Subject: line printer line transport
Date: 26 Sep 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309252310.h8PNAdY30004@xizor.is.kpn.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I want to use some simple line printer for text and debug print-out.
Problem is that that *nix (text) output gives solely LineFeed (LF)
at a line break, not the needed additional Carriage Return (CR).

No deal to fiddle with the dip switches of the printer(s) each time when
some text has to be printed from a Linux on that units (and besides, those
[HP] printers can only add LFs to given CRs, not vice versa), as there are
other OSs which durely give the CR+LF sequence by themselves. So the
solution must be soft.

No question neither to reformat the files to print just for that
purpose, they should be left intgeger; and this wouldn't be working with
debugging output anyway.

Thus something like 'cat filename /dev/lp0' should go through a simple
filter which inserts a CR in front of any LF. Is there something the
like ? Couldn't a small bash script do it ?

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-09-25
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
