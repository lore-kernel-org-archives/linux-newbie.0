From: James Miller <jamtat@mailsnare.net>
Subject: 2 ethernet jacks -> single net connection?
Date: Wed, 7 Jan 2004 12:09:32 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401071143110.3379@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've got 2 physical ethernet jacks available to me here.  I assume each
processes traffic independently: I've been online at both simultaneoulsy
with 2 different computers, anyway.  Since I'll be setting up a
firewall/router here (LRP type thing, with an older computer), I was just
wondering about the possibilities of combining the two into a single
internet connection (should make the connection faster, according to my
understanding).  The way I could see this happening physically is that
each jack has a cable going to a NIC in the router/firewall, which in turn
has a NIC that leads to a hub/switch (3 NIC's in the router/firewall).  
The router/firewall NATs to/from the two jacks to/from the local network.  
Somehow I recall the term "channel bonding" relative to this, though I
don't know if that's really what I'm trying to do.  First, I'd just like
to ask if, in principle, what I'm thinking about doing is possible (for
me-bearing in mind that I can likely get the assistance of a certain 3rd 
tier Linux-guru-in-training mentioned in an earlier post)?  If so, my next 
question is: in broad terms, how?  It would be nice if one of the 
router/firewall distros can more or less automate this setup for me/us.  
Input appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
