From: Eric Bambach <eric@cisu.net>
Subject: Re: Linux Help
Date: Mon, 19 Jul 2004 14:42:25 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407191442.25778.eric@cisu.net>
References: <5.1.0.14.1.20040719101312.01fb9c70@celine>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040719101312.01fb9c70@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kev <savage-garden@hanikamail.com>
Cc: linux-newbie@vger.kernel.org

On Monday 19 July 2004 12:59 pm, Ray Olszewski wrote:
> Responses interspersed below.
>
> At 11:09 PM 7/19/2004 +0600, Kev wrote:
> >Hi,
> >
> >I'm new to Linux, so i'm paling to install a gateway, with the following,
> >
> >1. Firewall
> >2. DNS
> >3. DHCP
> >4. SMTP (relay only)
> >5. Email Virus Scaning
> >6. Gray Listing (email)
> >7. NAT
> >8 Web Cashing
> >9. Web Based Configuration tool for all above.
--Snip--
> Whatever distro you use, though, there are two constants:
>
> 1. Use an up-to-date version.
> 2. Use whatever system it has for tracking and installing security updates.
>

Agree.

> OK. Item by item ...
>

> >5. Email Virus Scaning
>
> I don't know of any packages that do this on Linux. Perhaps someone else
> can jump in here. (I did just search the Debian packae list, and I saw
> several possibilities there, but I'm not familiar with any of them in
> detail.)
>
> In any case, what you do here depends on how you are receiving e-mail, and
> your "relay only" comment above leave me uncertain about what you want to
> accomplish.

This is tough. How you chose to accomplish this will affect what SMTP/Mail 
client you choose. Ive seen some anti-viurs tools that only work with q-mail, 
or that only work with sendmail, or they work for one, but are extremely 
difficult to configure for another. My best advice, for tackling gray-listing 
and antivirus and an e-mail setup, look deeply into all three before you pick 
any one package. Eg. look at what qmail has to offer and the solutions for 
greylisting and antivirus, then check out sendmail etc. If you settle on any 
one mail package, then, as a novice, you might limit yourself too much on 
choosing a decent or compatible greylisting and antivirus solution.

> >6. Gray Listing (email)
>
> Please explain this one better. I'm used to grey lists working as part of
> an smtp aemon setup. But if you get your e-mail via POP or IMAP (again,
> that "relay only" comment leaves me at a loss), I don't know what you want
> "grey listing" to do.

Gerylisting solutions can be found here for various mail servers.

http://projects.puremagic.com/greylisting/links.html
 
> >8 Web Cashing
>
> I'm a bit out of date here. The usual way to do this is with a caching (not
> "cashing") proxy server like junkbuster or squid. There are a lot of them
> around; squid is probably still the standard.

Go with squid. It has a good default configuration and you will only need to 
change a few things to get it started on your network. That is the allow/deny 
lines i believe, and maybe set your cache directory.

> >9. Web Based Configuration tool for all above.
>
> Good luck. One place where Linux is weak is on unified configuration
> systems of any sort, and Web-based ones in partcular. In any case,
> Web-based configuration requires Web access to the host, and you won't get
> that out of the box with any distro ... they all require some console-based
> setup, if only to assign the IP address to the internal interface.

Look at Webmin. 
http://www.webmin.com/
Great web-tool that supports SSL, and third party modules to configure any 
type of daemon or system operation. Not quite a do-it-all-in-one-wonder tool 
all by itself, but its pretty darn good. Webmin can help you set up qmail, 
sendmail, squid, bind, dhcpd and more.

> >the Box will be a P2 with 256MB ram but if i can get it to work on a P1
> >166Mhz that would be great....
>
> Probably a P1 will serve ... at least if we are talking about typical
> connection speeds (an external interface between 100 Kbps and 1.5 Mbps) and
> a 100 Mbps LAN. Here, for example, I've used a 486 with 32 MB RAM as
> dedicated firewall for years. Just a NAT'ing firewall, though ... no SMTP
> relay or Web caching.
>
> Issues that might arise for you are:
>
> 1. Complexity of the firewall ruleset. Longer rulesets take more time to
> scan, and every packet has to traverse them until it matches a rule (or
> reaches the end). This is likely to be a problem only with very complex
> rulesets and high traffic volume.
>
> 2. Size of the Web cache. More RAM will matter here more than CPU type and
> speed. And if you're caching to a hard disk, you'll want one with DMA
> support (standard on modern systems, but I don't know about old P1s).

Pick up a cheap ( $20? ) PCI IDE card. Now they will support up to 133 MB/s 
and are supported esily by linux drivers.

-- 

-EB
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
