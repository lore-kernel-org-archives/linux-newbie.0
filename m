From: Ray Olszewski <ray@comarre.com>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Mon, 12 Apr 2004 21:14:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040412210518.01f317d8@celine>
References: <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404121355350.673@debian-emach>
 <407B2158.6070702@jpl.nasa.gov> <Pine.LNX.4.58.0404122152500.688@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404122152500.688@debian-emach>
References: <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404121355350.673@debian-emach>
 <407B2158.6070702@jpl.nasa.gov>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Responding to bits and pieces only.

At 10:28 PM 4/12/2004 -0500, James Miller wrote:
[...]
  I know of no sensible workaround for this problem, except
> > the  most basic one: keep a copy of your changes somewhere and be ready to
> > restore them if you need to.
>
>Ok.  Hope I can remember that I saved it should I ever need to
>reconfigure.

You sound like my son. But I digress ....

Over the years, the only practice I've found that lets me avoid this sort 
of problem is to maintain a configuration-notes file on each system I 
admin. I keep it in /root, I always give it the same name, and I write down 
everything I do, including noting the locations of any non-standard backups 
I make. Since I never have more than a half-dozen machines I'm supporting, 
this approach suffices (combined with using only Debian and having some 
fairly predictable habits about how I do things) to let me keep track of 
system-level stuff pretty well. I admit I learned this lesson the hard way.

I do wonder if others have developed better tricks than I have for keeping 
track of things.

> > But your problem is probably with the "Configured Mouse" entry. It may be
> > using the wrong device (I don't have a /dev/gpmdata device here so cannot
> > check what it is). You may be able to fix the problem by editing
> > XF86Config-4 so this Device entry points to /dev/psaux (assuming you have
> > that device).
>
>I installed gpm (gives mouse cursor/action in console mode) since I've
>used virtual terminals alot on other machines.  On this one, I don't use
>them much, so maybe I should just uninstall gpm?

Yes. gpm and X are known to conflict. Sometimes -- with particular X 
servers and mice, I guess -- they don't .. but that's just luck.

[...]
>Ok, I'll try that.  Thanks for the advice.  Maybe I'm being too hyper
>about kernel upgrades, but when I read about some kernel security
>vulnerability, my inclination is to upgrade to a newer kernel.  Is this a
>sound, or perhaps inadvisable, approach?

Hard to answer definitively. Most of the vulnerabilities I see reported in 
Debian security announcements are local ... they are ways an ordinary user 
can become root. Since only my son and I use these hosts, and we both have 
root access, and they are behind a good firewall, I tend not to treat these 
announcements as urgent. But if I were in a work or school setting with 
many unprivileged user accounts, or I were connecting directly to the 
Internet, I would be more proactive.

The security of a host or a network needs to be judged as a whole, not 
piece by piece.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
