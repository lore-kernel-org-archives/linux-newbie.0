From: Ray Olszewski <ray@comarre.com>
Subject: Re: Epiphany Browser Fails
Date: Sun, 23 Oct 2005 13:37:37 -0700
Message-ID: <435BF491.1070506@comarre.com>
References: <20051022104721.2ae3957d@localhost>	<6.2.3.4.0.20051021210529.0454d528@no.incoming.mail>	<4359DCD9.8030406@comarre.com> <20051023151151.55cb200f@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051023151151.55cb200f@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter wrote:
> Thanks Ray
> 
> On Fri, 21 Oct 2005 23:31:53 -0700
> Ray Olszewski <ray@comarre.com> wrote:
> 
> 
>>>At 10/22/2005 10:47 +0800, Peter wrote:
>>>
>>>
>>>>Slackware 10.2 Kernel 2.4.31
>>>>
>>>>After upgrading to Slackware 10.2 from 10.1 the browser epiphany won't 
>>>>open and I get the following error message:
>>>>
>>>>Epiphany can't be used now. Mozilla initialization failed.
>>>>
>>>>Checking with Google it seems a common problem with apparently no real 
>>>>solution.
>>>>
>>>>Or does somebody on this list knows one?
>>
>>As you kow, I use Debian, not Slackware. So if this is some peculiarity 
>>specific to Slack, I can't help. But the usual reason for this sort of 
>>failure is a broken dependency, and Slackware is about the worst of the 
>>major distros at identifying dependency issues in its package 
>>management. The little bit of checking I did via Google seems to say 
>>that other users, or at least a subset of them, with problems are 
>>hitting dependency issues.
> 
> 
> May be I should try debian after in slackware I had some annoying letdowns. 
> In fact DSL which I like, is debian. It's just changing to another distro is
> like moving house.

Yeah, moving is a drag, but sometimes you need to bite the bullet. I 
switched from Slackware to Debian around 1999, and I don't regret it for 
a minute. It was the only big Linux move I ever made, having previously 
used Slack since 1992 (I don't change houses often, either). Were I 
switching now, I might look at one of the friendlier Debian spinoffs, 
like Ubuntu.

I don't want to turn this discussion into a best-distro argument, but I 
do think all the other major distros ... the Debian-based ones and the 
Red Hat derivatives (by which I mean most everything that uses .rpm 
packaging) ... have better tools than Slackware for maintaining 
consistency among versions of their packages.

I use and like Debian, but I'm sure that Fedora (for example) users can 
point to many of the same benefits in its packaging system ... and from 
what I read, it is better than Debian at hardware detection. And with 
Debian, you have to choose among Stable (reliable, but not kept very up 
to date), Unstable (very up to date, but things often break for a few 
days due to mismatches in package upgrades on just plain bugs), or 
Testing (somewhere in between ... not sure if you get the best or the 
worst of both worlds). There's no perfect solution, just each 
individual's best compromise.

These days, Slackware really is for people who like tinkering. From what 
you write here, I don't think you are one of them.

>>So to figure out what is going on, I would first use ldd to check what 
>>libraries Mozilla uses and if any of them are missing. Or see if Mozilla 
>>itself will start without the Epiphany frontend; if so, it's likely a 
>>version issue between the two packages.
> 
> 
> That's the first thing I did doing ldd and it showed that epiphany could not
> find 3 libraries. 

And you did this install via a Slackware upgrade? It's not odd for 
packages external to a distro (for example, the Epiphany source package 
from gnome.org) not to know a distro's library conventions ... but when 
a distro's own upgrade gets them wrong, that *is* a bad sign. It means 
either that the packager was downright sloppy or that the libraries 
changed in some fundamental way and the currents ones won't work right, 
even if symlinked to the expected locations.

If you post again on this topic, please include the specifics of the 
missing libraries and what symlinks you made.

> I then made symbolic links after which epiphany tries to
> start and shows a window asking if I want to:
> Quote
> Recover previous browser windows and tabs?
> Epiphany appears to have exited unexpectedly the last time it was run. You can
> recover the opened windows and tabs.
> Unquote
> 
> Than clicking on either Recover or Don't recover I get the next error window
> as cited above.
> 
> 
>>If you post that output and the version numbers of your Mozilla and 
>>Epiphany, I (or someone) may be able to spot a library that needs updating.
> 
> 
>>Package: epiphany-browser
>>Priority: optional
>>Section: gnome
>>Installed-Size: 9072
>>Maintainer: Jordi Mallach <jordi@debian.org>
>>Architecture: i386
>>Version: 1.6.5-2
>>Provides: www-browser
>>Depends: dbus-1 (>= 0.23.4), dbus-glib-1 (>= 0.23.4), libart-2.0-2 (>= 
> 
> ----snip----
>  mozilla-browser 
> 
>>(>= 2:1.7.10), mozilla-psm (>= 2:1.7.10), gnome-icon-theme (>= 2.9.90), 
>>iso-codes, gconf2 (>= 2.10.1-2)
>>Recommends: yelp, epiphany-extensions
>>Suggests: mozilla-bonobo
>>Conflicts: mozilla-browser (>= 2:1.8)
>>
> How do you get this output? What's the command?

You don't get this output on a Slackware system. It comes from apt, one 
of the Debian package managers (dpkg is the other important one) and is 
extracted from the package database. This same information is what lets 
Debian installers identify and resolve dependency issues.

As far as I know in Slackware (and if I'm wrong, I hope some Slackware 
user will correct me), all you have to work with in Slack is ldd's output.

> With ldd I only get the listing of libraries. I cannot ldd mozilla since the
> file is not a dynamic executable. It is a /bin/sh script

Yeah, but the script must call some binary. (I don't have mozilla 
installed here or I'd check for you.) ldd that binary.

You should also try starting mozilla directly ... not through Epiphany 
... so you can be sure where the problem lies.

> The new version of mozilla in slack10.2 is 1.7.11. I uninstalled it and
> reinstalled old version of mozilla 1.7.5 which was running epiphany before.
> I un/reinstalled epiphany 1.6.4 as well.
> Still epiphany would not start any longer. 

With the same error? Then (almost) surely the underlying mozilla binary 
has a version problem with some shared library.

This URL -- http://planet.gnome.org/news/ -- has some dependency 
information on the current version (1.8.2) of Epiphany. But that may be 
too new for you. This URL -- http://blogs.gnome.org/portal/epiphany -- 
has similar info for older versions of Epiphany, but not as far back as 
1.6.4. (What was the new Epiphany version Slack installed as part of the 
upgrade?)

This announcement -- 
http://mail.gnome.org/archives/gnome-announce-list/2005-July/msg00010.html 
-- is for 1.6.4.

> It is not too serious since I use epiphany only for BBC-Radio-Player, however,
> I like to have my house in order and all things working properly. Other
> browsing is done with firefox, opera or netscape.

Yeah, me too (the "house in order" part). Hope you can work this out. 
Sorry I cannot provide anything more specific to help you along.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
