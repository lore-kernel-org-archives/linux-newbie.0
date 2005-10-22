From: Ray Olszewski <ray@comarre.com>
Subject: Re: Epiphany Browser Fails
Date: Fri, 21 Oct 2005 23:31:53 -0700
Message-ID: <4359DCD9.8030406@comarre.com>
References: <20051022104721.2ae3957d@localhost> <6.2.3.4.0.20051021210529.0454d528@no.incoming.mail>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6.2.3.4.0.20051021210529.0454d528@no.incoming.mail>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Jeff Woods wrote:
> At 10/22/2005 10:47 +0800, Peter wrote:
> 
>> Slackware 10.2 Kernel 2.4.31
>>
>> After upgrading to Slackware 10.2 from 10.1 the browser epiphany won't 
>> open and I get the following error message:
>>
>> Epiphany can't be used now. Mozilla initialization failed.
>>
>> Checking with Google it seems a common problem with apparently no real 
>> solution.
>>
>> Or does somebody on this list knows one?

As you kow, I use Debian, not Slackware. So if this is some peculiarity 
specific to Slack, I can't help. But the usual reason for this sort of 
failure is a broken dependency, and Slackware is about the worst of the 
major distros at identifying dependency issues in its package 
management. The little bit of checking I did via Google seems to say 
that other users, or at least a subset of them, with problems are 
hitting dependency issues.

So to figure out what is going on, I would first use ldd to check what 
libraries Mozilla uses and if any of them are missing. Or see if Mozilla 
itself will start without the Epiphany frontend; if so, it's likely a 
version issue between the two packages.

If you post that output and the version numbers of your Mozilla and 
Epiphany, I (or someone) may be able to spot a library that needs updating.

All this is just a guess, though.

For now, here's the dependency and version info from Debian-Sid, in case 
that is helpful to you:

Package: epiphany-browser
Priority: optional
Section: gnome
Installed-Size: 9072
Maintainer: Jordi Mallach <jordi@debian.org>
Architecture: i386
Version: 1.6.5-2
Provides: www-browser
Depends: dbus-1 (>= 0.23.4), dbus-glib-1 (>= 0.23.4), libart-2.0-2 (>= 
2.3.16), libatk1.0-0 (>= 1.9.0), libbonobo2-0 (>= 2.8.0), libbonoboui2-0 
(>= 2.5.4), libc6 (>= 2.3.5-1), libgcc1 (>= 1:4.0.1), libgconf2-4 (>= 
2.9), libglade2-0 (>= 1:2.5.1), libglib2.0-0 (>= 2.8.0), 
libgnome-desktop-2 (>= 2.9.91), libgnome2-0 (>= 2.8.0), 
libgnomecanvas2-0 (>= 2.6.0), libgnomeui-0 (>= 2.8.0), libgnomevfs2-0 
(>= 2.10.0-0), libgtk2.0-0 (>= 2.6.0), libice6 | xlibs (>> 4.1.0), 
liborbit2 (>= 1:2.10.0), libpango1.0-0 (>= 1.8.2), libpopt0 (>= 1.7), 
libsm6 | xlibs (>> 4.1.0), libstartup-notification0 (>= 0.8-1), 
libstdc++6 (>= 4.0.1-9), libx11-6 | xlibs (>> 4.1.0), libxml2 (>= 
2.6.21), libxslt1.1 (>= 1.1.15), zlib1g (>= 1:1.2.1), mozilla-browser 
(>= 2:1.7.10), mozilla-psm (>= 2:1.7.10), gnome-icon-theme (>= 2.9.90), 
iso-codes, gconf2 (>= 2.10.1-2)
Recommends: yelp, epiphany-extensions
Suggests: mozilla-bonobo
Conflicts: mozilla-browser (>= 2:1.8)

... and ...

Package: mozilla-browser
Priority: optional
Section: web
Installed-Size: 28059
Maintainer: Takuo KITAME <kitame@debian.org>
Architecture: i386
Source: mozilla
Version: 2:1.7.12-1
Replaces: mozilla (<< 1:0.8), mozilla-psm (<< 2:0.9.7-2), 
mozilla-mailnews (<< 2:1.5-1), mozilla-xft, mozilla-locale-auto
Provides: www-browser, mozilla-xft
Depends: libatk1.0-0 (>= 1.9.0), libc6 (>= 2.3.5-1), libfontconfig1 (>= 
2.3.0), libfreetype6 (>= 2.1.5-1), libgcc1 (>= 1:4.0.1), libglib2.0-0 
(>= 2.8.0), libgtk2.0-0 (>= 2.6.0), libpango1.0-0 (>= 1.8.2), libstdc++6 
(>= 4.0.2), libx11-6 | xlibs (>> 4.1.0), libxext6 | xlibs (>> 4.1.0), 
libxft2 (>> 2.1.1), libxp6 | xlibs (>> 4.1.0), libxrender1 (>> 
1:0.9.0-1), libxt6 | xlibs (>> 4.1.0), zlib1g (>= 1:1.2.1), libnspr4 (= 
2:1.7.12-1), debconf (>= 1), psmisc
Recommends: mozilla-psm (= 2:1.7.12-1), myspell-en-us | myspell-dictionary
Suggests: xprt, latex-xft-fonts
Conflicts: mozilla (<< 1:0.8), epiphany-browser (<= 1.2.6-1), 
galeon-common (<= 1.3.15-2), kazehakase (<= 0.1.6-1), mozilla-xft, 
mozilla-locale-auto

Note particularly the pickiness of Epiphany about wanting a very 
specific version of mozilla-browser
	Depends:	mozilla-browser (>= 2:1.7.10)
	Conflicts: 	mozilla-browser (>= 2:1.8)

> It may sound flippant, but:

It sounds even less kind than that, Jeff. This list exists in large part 
because options like "contact technical support" are not available to us 
hobbyists and home users who rely on free-as-in-beer versions of Linux. 
Peter's is the sort of question that folks here do try to answer.

> Contact Slackware support
> and/or
> contact Epiphany support
> and/or
> try another browser
> and/or
> go back to Slackware 10.1
> and/or
> try another distribution.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
