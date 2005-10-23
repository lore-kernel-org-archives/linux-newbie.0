From: Peter <bato_mainit@ispx.com.ph>
Subject: Re: Epiphany Browser Fails
Date: Sun, 23 Oct 2005 15:11:51 +0800
Message-ID: <20051023151151.55cb200f@localhost>
References: <20051022104721.2ae3957d@localhost>
	<6.2.3.4.0.20051021210529.0454d528@no.incoming.mail>
	<4359DCD9.8030406@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4359DCD9.8030406@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Thanks Ray

On Fri, 21 Oct 2005 23:31:53 -0700
Ray Olszewski <ray@comarre.com> wrote:

> > At 10/22/2005 10:47 +0800, Peter wrote:
> > 
> >> Slackware 10.2 Kernel 2.4.31
> >>
> >> After upgrading to Slackware 10.2 from 10.1 the browser epiphany won't 
> >> open and I get the following error message:
> >>
> >> Epiphany can't be used now. Mozilla initialization failed.
> >>
> >> Checking with Google it seems a common problem with apparently no real 
> >> solution.
> >>
> >> Or does somebody on this list knows one?
> 
> As you kow, I use Debian, not Slackware. So if this is some peculiarity 
> specific to Slack, I can't help. But the usual reason for this sort of 
> failure is a broken dependency, and Slackware is about the worst of the 
> major distros at identifying dependency issues in its package 
> management. The little bit of checking I did via Google seems to say 
> that other users, or at least a subset of them, with problems are 
> hitting dependency issues.

May be I should try debian after in slackware I had some annoying letdowns. 
In fact DSL which I like, is debian. It's just changing to another distro is
like moving house.

> So to figure out what is going on, I would first use ldd to check what 
> libraries Mozilla uses and if any of them are missing. Or see if Mozilla 
> itself will start without the Epiphany frontend; if so, it's likely a 
> version issue between the two packages.

That's the first thing I did doing ldd and it showed that epiphany could not
find 3 libraries. I then made symbolic links after which epiphany tries to
start and shows a window asking if I want to:
Quote
Recover previous browser windows and tabs?
Epiphany appears to have exited unexpectedly the last time it was run. You can
recover the opened windows and tabs.
Unquote

Than clicking on either Recover or Don't recover I get the next error window
as cited above.

> If you post that output and the version numbers of your Mozilla and 
> Epiphany, I (or someone) may be able to spot a library that needs updating.

> Package: epiphany-browser
> Priority: optional
> Section: gnome
> Installed-Size: 9072
> Maintainer: Jordi Mallach <jordi@debian.org>
> Architecture: i386
> Version: 1.6.5-2
> Provides: www-browser
> Depends: dbus-1 (>= 0.23.4), dbus-glib-1 (>= 0.23.4), libart-2.0-2 (>= 
----snip----
 mozilla-browser 
> (>= 2:1.7.10), mozilla-psm (>= 2:1.7.10), gnome-icon-theme (>= 2.9.90), 
> iso-codes, gconf2 (>= 2.10.1-2)
> Recommends: yelp, epiphany-extensions
> Suggests: mozilla-bonobo
> Conflicts: mozilla-browser (>= 2:1.8)
> 

How do you get this output? What's the command?

With ldd I only get the listing of libraries. I cannot ldd mozilla since the
file is not a dynamic executable. It is a /bin/sh script

The new version of mozilla in slack10.2 is 1.7.11. I uninstalled it and
reinstalled old version of mozilla 1.7.5 which was running epiphany before.
I un/reinstalled epiphany 1.6.4 as well.
Still epiphany would not start any longer. 

It is not too serious since I use epiphany only for BBC-Radio-Player, however,
I like to have my house in order and all things working properly. Other
browsing is done with firefox, opera or netscape.


Regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
