From: "Alan Womack" <lists@tcob1.net>
Subject: re[2]: Want to strip some formatting out of a text file
Date: Tuesday, 13 Aug 2002 08:12:43 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020813_081243__fb565097@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


This is "what" the line looks like:

LLiinnuuxx--PPAAMM library

there is a Ctrl-H between each duplicate pair of letters..

I think I can strip it with a perl script at work.

$mystring=~/\cH.//g

I think will do it, I'll read the whole file into an array and iterate through 
and see what happens..

 >>  > I'm trying to download the text manuals for the linux pam modules to my
 >>  palm pilot, but there is the appearance of old style double strike for
 >>  emphasis text all over the docs.
 >>  >
 >>  > e.g. a L(backspace)Li(backspace)in(backspace)n
 >>  >
 >>  > What utility to remove this backspacing and doubling of characters so
 >>  they would be over-written?
 >>  >
 >>  > Alan
 >>  >
 >>  > I dl'd the text file from the kernel.org website documentation of pam

 >>  col -b

 >>  I guess.




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
