From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: scanf and stdin having multiple ints
Date: 18 Nov 2002 13:14:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1037643284.31869.5.camel@brainpress.verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Supose I write a program in nasm that does this:

Enter a set of integers separated by spaces:  
22 31 456 87

Suppose that in the module I am calling scanf to repeatedly parse the
ints from stdin to place in an array, each index of which is 32 bits in
size to hold a 32 bit unsigned int.

I've been told that using the format string "%n" does nothing in scanf. 
I'm going to try "%i" next, but I don't know if it'll work...

By the way, eax should be 0 when scanf stops getting data from stdin
right?  And incrementing my pointer to the array should be like "add
esi, 4" right?  Documentation is scarce for this type of thing.  All
I've been told is that fgets is the right function to use, but scanf is
faster because it does parsing and conversion in one call...
-- 
Regards,

Bryan Simmons

=-=-=-=-==-=-=-=-==-=-=-=-==-=-=-=-=-=
 "More hay Trigger?", "No thanks Roy,
  I'm stuffed."
=-=-=-=-==-=-=-=-==-=-=-=-==-=-=-=-=-=
http://www.sarcastic-bastard.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
