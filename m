From: James Miller <jamtat@mailsnare.net>
Subject: Re: 2 ethernet jacks -> single net connection?
Date: Thu, 8 Jan 2004 11:13:36 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401081053230.3379@localhost>
References: <Pine.LNX.4.58.0401071143110.3379@localhost> <3FFCE370.2090001@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FFCE370.2090001@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for that info, Conway.  What's on the other end is actually a
university network, and beyond that their ISP.  I have no idea how this
network is set up or the nature of their internet service, and cannot
really even conjecture whether the setup might support such bonding.  I
would guess that, in principle, they would not want people doing this sort
of thing (doesn't fit the profile of the student PC user who casually
connects to and uses the network, but is closer to the profile of the
hacker/network abuser).  I suppose whether it's supported depends on
whether any of the university's own systems ever need to do this sort of
thing.  Anyway, my own motivations would be not so much to soak up as much
of the available bandwidth as possible (I use it most for web browsing and
email, occasional software downloads and system updates [no filesharing,
webserving or things like that]), but to learn something by
experimentation. So, I'll think this over some more and consider the
material you've pointed to and decide how to proceed from there.

Thanks, James

On Wed, 7 Jan 2004, Beolach wrote:

> First off, I have no actual experience with this, and I am just going 
> off the kernel documentation.  It is possible, and you even remembered 
> the term correctly - ethernet channel bonding.  What will most likely be 
> the deciding factor on whether or not you can actually set this up is if 
> the other end of the two ethernet channels (probably your ISP) supports 
> bonding.  Here's the a direct quote from the relevant kernel documentation.
> 
> <BLOCKQUOTE>
> Bonding driver support BONDING
> 
> Say 'Y' or 'M' if you wish to be able to 'bond' multiple Ethernet
> Channels together. This is called 'Etherchannel' by Cisco,
> 'Trunking' by Sun, and 'Bonding' in Linux.
> 
> If you have two Ethernet connections to some other computer, you can
> make them behave like one double speed connection using this driver.
> Naturally, this has to be supported at the other end as well, either
> with a similar Bonding Linux driver, a Cisco 5500 switch or a
> SunTrunking SunSoft driver.
> 
> This is similar to the EQL driver, but it merges Ethernet segments
> instead of serial lines.
> 
> To compile this driver as a module, choose M here: the module
> will be called bonding.
> </BLOCKQUOTE>
> 
> Good luck & let us know if you get this working,
> Conway S. Smith
> 
> 
> James Miller wrote:
> > I've got 2 physical ethernet jacks available to me here.  I assume each
> > processes traffic independently: I've been online at both simultaneoulsy
> > with 2 different computers, anyway.  Since I'll be setting up a
> > firewall/router here (LRP type thing, with an older computer), I was just
> > wondering about the possibilities of combining the two into a single
> > internet connection (should make the connection faster, according to my
> > understanding).  The way I could see this happening physically is that
> > each jack has a cable going to a NIC in the router/firewall, which in turn
> > has a NIC that leads to a hub/switch (3 NIC's in the router/firewall).  
> > The router/firewall NATs to/from the two jacks to/from the local network.  
> > Somehow I recall the term "channel bonding" relative to this, though I
> > don't know if that's really what I'm trying to do.  First, I'd just like
> > to ask if, in principle, what I'm thinking about doing is possible (for
> > me-bearing in mind that I can likely get the assistance of a certain 3rd 
> > tier Linux-guru-in-training mentioned in an earlier post)?  If so, my next 
> > question is: in broad terms, how?  It would be nice if one of the 
> > router/firewall distros can more or less automate this setup for me/us.  
> > Input appreciated.
> > 
> > Thanks, James
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
