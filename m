From: Ray Olszewski <ray@comarre.com>
Subject: Re: distribution choice
Date: Thu, 27 Feb 2003 15:49:04 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030227152314.01f2e110@celine>
References: <5.1.0.14.1.20030227112842.01f216e0@celine>
 <5.1.0.14.1.20030227112842.01f216e0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302272307.h1RN7TdG002872@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Haines -- Your reply posed a couple of new questions. I'm limiting these 
comments to answering them.

At 06:07 PM 2/27/2003 -0500, Haines Brown wrote:
[...]
> > Hardware *detection* is a different issue, and on that score, Debian
> > fares poorly ... unless you use very mainstream stuff, you have to
> > tell Debian a lot about your hardware.
>
>By "mainstream," you do mean machines (Dell, Gateway, etc.) or
>components (Maxtor, 3M, etc.)? My impression is that the mass
>assembled machines sometimes use odd components, and so adapting to
>the machine or the component can have quite different results.

I meant components. (Except for an old E-Machine I'm in the process of 
converting from Win98, I build all my own Linux systems, so I have 
absolutely zero experience installing Linux on Gateway or Dell boxes.)

NICs are a good example (and the one I keep colliding with). The stock 
Debian install kernel contains built-in drivers for tulip, eepro100, and 
maybe one or two others. If you use anything less ordinary, you need to add 
the right module (and to know which one is right).

I'm told that RH is much better at hardware detection ... but I'm also told 
that the RH installer is somewhat Windows-like, in that if it is stumped, 
there is no ready way for you to move ahead by identifying unrecognized 
hardware for it. But I don't know any of that from my own experience, so it 
could easily be a misunderstanding on my part.

[...]
>I used to worry about customizing package selection, but handicaped by
>not really being sure what they are. My salvation (if one call it
>that) is the low price of giant hard disks these days, and so I can
>just load everything (HOWTOs in Japanese, etc.). Is debian informative
>about what the various packages are?

Probably about as informative as RPMs are. That is to say, good but not 
great. Package names usually make sense, and searchig the package cache 
usually finds what you want. But sometimes your search terms are too vague 
to work ... you recall recently a question here about "rec", for example. 
Trying to search the package archive for "rec" matched 100+ packages ... a 
hopeless screening task. The real lack I find is my inability to query the 
database about what package contains a particular file ... there is a way 
to do this if the package is installed on the host, but not if you want the 
app and need to find out which package contains it. (In this respect, I was 
spoiled by Slackware, which always included a complete list, easily 
grep'able, of the complete contents of of every package.)

[...]
> > You might ask yourself to what extent your problems with RH come
> > from trying to use the free version of a distro intended to make
> > money
>
>Do you mean a compromise of the distribution's integrety in order to
>capture greater market share? If so, I suspect I may be a victim of
>that with RedHat 8.0.

I wouldn't use the word "integrity" here; it's too easily subject to the 
sort of misinterpretation that starts flame wars.

One can run a profit-making business and still have integrity, and I've no 
real doubt that Red Hat is scrupulous about meeting its obligations under 
GPL and other Open Source/free software licenses. But at the same time, 
those obligations do not require RH to run a high-performance 
package-updating service for non-paying users (for example). And RH might 
include non-GPL applications in the paid versions. I wouldn't be outraged 
by such behaviors, especially by a struggling business.

I don't know if they do things like that, not being a Red Hat user. But if 
I used Red Hat, I would be sure to understand the limitations of the free 
version and any restrictions associated with the paid version.

> > I'd be *very* cautious about a "retreat" to RH 7.3, unless you can
> > satisfy yourself that it gets good security updates ... with a DSL
> > connection, you are vulnerable to attacks from the Internet pretty
> > much all the time, right?
>
>As I mentioned, I think I was subject to attack under RH7.3. Other
>than that, however, the distributions 7.1 and 7.3 proved to be was
>very solid for me. However, besides security issues, backtracking is
>likely to break things unless I do a fresh re-install. But then why
>not simply go to gentoo, Debian or Slackware?

I'm not sure what you mean by "subject to" attack. As I would use the term, 
we're all subject to attack ... that is, all of us with persistent Internet 
connections (and even many of us with dial-up connections). I assume I am 
regularly attacked here (I don't even check any more, absent symptoms of a 
system compromise), but I believe that the paranoid firewall I have 
installed guards the gates effectively.

If you meant instead that your RH 7.3 included apps with known and 
uncorrected security holes ... well, that's what I meant by needing to pay 
attention to a distro's policy and practice regarding security updates. RH 
used to have a decent service for this, even for non-paying users, but I 
don't know it survived the IPO bust. And I don't know how long they 
continue to offer security updates for non-current versions. Debian 
Unstable (which I mostly use) is excellent about security updates, and I 
think Debian Stable is as good or better.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
