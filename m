From: Ray Olszewski <ray@comarre.com>
Subject: Re: scanf and stdin having multiple ints
Date: Mon, 18 Nov 2002 12:46:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021118123532.020d9aa0@celine>
References: <1037643284.31869.5.camel@brainpress.verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1037643284.31869.5.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

I didn't see any other responses to this, so let me say what I can. I can't 
help with anything specific to nasm, but as to scanf ... did you consult 
its man page?

A quick read of it confirms that %n is, at best, unpredictable in how it 
will be interpreted (or perhaps "at worst", since I think "unpredictable" 
is scarier than "does nothing"). %i reads an "optionally signed" integer, 
and %u an unsigned integer. To be sure you are reading a 32-bit long, you 
might want to use %l [L, not one].

At 01:14 PM 11/18/02 -0500, Bryan Simmons wrote:
>Supose I write a program in nasm that does this:
>
>Enter a set of integers separated by spaces:
>22 31 456 87
>
>Suppose that in the module I am calling scanf to repeatedly parse the
>ints from stdin to place in an array, each index of which is 32 bits in
>size to hold a 32 bit unsigned int.
>
>I've been told that using the format string "%n" does nothing in scanf.
>I'm going to try "%i" next, but I don't know if it'll work...
>
>By the way, eax should be 0 when scanf stops getting data from stdin
>right?  And incrementing my pointer to the array should be like "add
>esi, 4" right?  Documentation is scarce for this type of thing.  All
>I've been told is that fgets is the right function to use, but scanf is
>faster because it does parsing and conversion in one call...



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
