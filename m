From: "L A Walsh" <law@tlinx.org>
Subject: RE: Large FTP transfers
Date: Sun, 29 Sep 2002 07:54:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NFBBKNPJLGIDJFAHGKMBAEIHCDAA.law@tlinx.org>
References: <200209291739.30520.adam@luchjenbroers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209291739.30520.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adam@luchjenbroers.com
Cc: linux-newbie@vger.kernel.org



-----Original Message-----
From:  Adam Luchjenbroers

I'm starting to suspect the NIC. It has twice recently (one instance before my 
previous emails, one since) stopped being detected with Linux giving me an 
"unable to access 64-bit address message"
...
In both cases, applying pressure to the top of the card fixed the issue, 
however it is properly screwed in. How can I verify that this part is at 
fault as I do not have any other cards to test it with?
-------


I don't know where you live, but at a large electronics superstore (Fry's 
Electronics in California), a 10/100 ethernet NIC goes for as little as 
10-15 bucks.  At that price, it might be worth your while just to shell 
out money for a spare NIC card to test with. If it is the card, you
could spend more than that just in increased 
time and headache.  If it's not the card, at least you will have 
eliminated one problem besides gaining a spare NIC card.  

You also might try putting the card in a different slot -- dunno how old 
your computer is, but if the motherboard slot is marginal, that might give
more info.

Another possibility, I had a cheap NIC card that had some tolerances 
that were 'off'.  When I screwed it down, it wanted to tilt backwards and the
front of the card 'pop'ed up out of the socket.  Took a bit of pressure to 
hold down the card to get it to screw in, but if that didn't work, 
I just would have left it unscrewed or would have rig'ed some extra 
support where it screwed in.

Unable to access 64-bit address?  That seems weird -- do 32-bit PCI buses
normally use 64-bit addressing?

I missed it -- did you say what kind of nic card this was?  I had 
problems another time with large file transers.  One thing was the 
nic card I was using -- there was actually a kernel-hack flag for 
the card (still is) to deal with high error rates (nat semi card).

Good luck.

-l
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
