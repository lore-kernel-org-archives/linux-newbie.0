From: James Miller <jamtat@mailsnare.net>
Subject: Re: Help with Fedora Core 2 internet access
Date: Sat, 21 Aug 2004 22:53:15 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0408212252460.1802@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 21 Aug 2004, Adam Boettiger wrote:

> I am a newbie to linux.  Just partitioned my drive and installed Fedora
> Core 2 on a 10G partition. The partition and install went very smoothly
> and I am exploring linux but am stuck trying to get internet access.
>
> I'm on a Dell D600 laptop with a Centrino chip (wireless) trying
> to access a WLAN in my home.
>
> When I looked at what was running in XP for the internet
> connection it was:
>
> Intel Pro / Wireless LAN 2100 3A mini pci adapter
>
> When I go to set up a wireless internet connection in linux, this
> is not listed in the adapters list.
>
> Is this wireless card compatible with Fedora Core 2 or do I need
> to download a driver or adapter for it?  If so, how and where?

Wirless 'net access is a real weak point for Linux.  If you get a wirless
card or computer with wireless and the Linux distribution you use it with
detects and sets it up, you're very lucky.  Most folks probably end up
researching wirless cards and find out which ones they can expect to work
under Linux, then they go and buy it.  But even this isn't a sure thing.
Apparently wireless NIC manufacturers frequently make key hardware changes
(e.g., use a different chipset) without notifying anyone or changing model
numbers.  It's sort of a messy situation, and poor support is not entirely
the fault of Linux developers.  I tried recently to get a wireless card
that would work under Linux and I was reduced to stopping in at stores,
grabbing a card, testing it to see if it would work, then returning it to
the store when it didn't.  Several tries were unsuccessful.  If I would
have persisted, or were I willing to spend more money, I could eventually
have gotten one that worked.  I just set the project aside though, since
it wasn't an absolute necessity and I was more concerned with getting a
bargain.  Anyway, were I in your shoes I would start with a Google search.
Search under the terms XP has given you for card identification.  Then,
restrict the search by the term "Linux" and see what people are saying
about this card and Linux - if anything.  The important thing will be
whether you can identify the chipset.  I've never used Fedora, so I can't
tell you a thing about how it should be set up for wireless or what it
should/shouldn't do in terms of hardware autodetection.  Likely a module
(maybe 2) will need to be loaded for the chipset - if they're available.
How to load modules on Fedora I can't say.  Modules are sort of a Linux
equivalent to what drivers are under Windows, by the way.  You've hit a
Linux rough spot with this one.

Good luck, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
