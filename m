From: Ray Olszewski <ray@comarre.com>
Subject: Re: line printer line transport
Date: Fri, 26 Sep 2003 16:09:54 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030926160804.033c3c10@celine>
References: <200309262050.h8QKo6O25459@oola.is.kpn.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309262050.h8QKo6O25459@oola.is.kpn.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

Heimo -- You sent this message to the list yesterday, and I replied to it 
there (only on the list, that is, not also to you personally). This time, 
I'm replying to both places, though more briefly -- look at a small 
Unix/Linux program called "todos" to handle this requirement.

At , Heimo Claasen wrote:
>I want to use some simple line printer for text and debug print-out.
>
>Problem is that that *nix (text) output gives solely LineFeed (LF)
>at a line break, not the needed additional Carriage Return (CR).
>
>No deal to fiddle with the dip switches of the printer(s) each time when
>some text has to be printed from a Linux on that units, as there are
>other OSs which duely give the CR+LF sequence by themselves (and besides,
>those [HP] printers can only add LFs to output-given CRs, not vice versa).
>So the solution must be soft.
>
>No question neither to reformat the files to print just for that
>purpose, they should be left intgeger; and this wouldn't be working with
>debugging output anyway.
>
>Thus something like 'cat filename >/dev/lp0' should go through a
>simple filter which inserts a CR in front of any LF.
>Like, 'cat <{filter-prog <filename} >/dev/lp0
>
>Is there something the like ?
>Could it perhaps done with a small bash script ?





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
