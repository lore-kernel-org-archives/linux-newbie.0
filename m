From: Beolach <beolach@comcast.net>
Subject: Re: 2 ethernet jacks -> single net connection?
Date: Wed, 07 Jan 2004 21:58:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FFCE370.2090001@comcast.net>
References: <Pine.LNX.4.58.0401071143110.3379@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401071143110.3379@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

First off, I have no actual experience with this, and I am just going 
off the kernel documentation.  It is possible, and you even remembered 
the term correctly - ethernet channel bonding.  What will most likely be 
the deciding factor on whether or not you can actually set this up is if 
the other end of the two ethernet channels (probably your ISP) supports 
bonding.  Here's the a direct quote from the relevant kernel documentation.

<BLOCKQUOTE>
Bonding driver support BONDING

Say 'Y' or 'M' if you wish to be able to 'bond' multiple Ethernet
Channels together. This is called 'Etherchannel' by Cisco,
'Trunking' by Sun, and 'Bonding' in Linux.

If you have two Ethernet connections to some other computer, you can
make them behave like one double speed connection using this driver.
Naturally, this has to be supported at the other end as well, either
with a similar Bonding Linux driver, a Cisco 5500 switch or a
SunTrunking SunSoft driver.

This is similar to the EQL driver, but it merges Ethernet segments
instead of serial lines.

To compile this driver as a module, choose M here: the module
will be called bonding.
</BLOCKQUOTE>

Good luck & let us know if you get this working,
Conway S. Smith


James Miller wrote:
> I've got 2 physical ethernet jacks available to me here.  I assume each
> processes traffic independently: I've been online at both simultaneoulsy
> with 2 different computers, anyway.  Since I'll be setting up a
> firewall/router here (LRP type thing, with an older computer), I was just
> wondering about the possibilities of combining the two into a single
> internet connection (should make the connection faster, according to my
> understanding).  The way I could see this happening physically is that
> each jack has a cable going to a NIC in the router/firewall, which in turn
> has a NIC that leads to a hub/switch (3 NIC's in the router/firewall).  
> The router/firewall NATs to/from the two jacks to/from the local network.  
> Somehow I recall the term "channel bonding" relative to this, though I
> don't know if that's really what I'm trying to do.  First, I'd just like
> to ask if, in principle, what I'm thinking about doing is possible (for
> me-bearing in mind that I can likely get the assistance of a certain 3rd 
> tier Linux-guru-in-training mentioned in an earlier post)?  If so, my next 
> question is: in broad terms, how?  It would be nice if one of the 
> router/firewall distros can more or less automate this setup for me/us.  
> Input appreciated.
> 
> Thanks, James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
