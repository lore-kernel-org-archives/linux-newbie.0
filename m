From: Ray Olszewski <ray@comarre.com>
Subject: Re: Odd path changes with new Mozilla in Debian Sid/unstable
Date: Mon, 15 Dec 2003 17:31:10 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20031215161723.01fc9230@celine>
References: <5.1.0.14.1.20031215151834.01ed0e30@celine>
 <5.1.0.14.1.20031215151834.01ed0e30@celine> <1071531782.22206.45.camel@DebiAnarchist>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1071531782.22206.45.camel@DebiAnarchist>
References: <5.1.0.14.1.20031215151834.01ed0e30@celine>
 <5.1.0.14.1.20031215151834.01ed0e30@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

There is not much more I can offer in the way of help (as you will see as 
you read on). You really need feedback from a Debian-Sid user who uses 
Mozilla, and that's not me. The little I can offer follows.

At 10:44 AM 12/16/2003 +1100, Peter Garrett wrote:
>Ithought I mentioned that apt installed debian's "mozilla 1.5-3".

Sort of. Your prior message said "This installed Mozilla 1.5-3". I read 
that as referring to a version of the Mozilla browser, not of the Debian 
meta-package "mozilla". But now we have that part cleared up.

>That's
>what the "about" entry in the help menu of the browser reports. I gree
>that the /etc/ file points to alternatives, as the name suggests. In my
>case it points to  /usr/bin/mozilla-1.5 .

Just to make sure I understand --

"ls -l /usr/bin/mozilla" returns something approximating ...

         /usr/bin/mozilla -> /etc/alternatives/mozilla

... and "ls -l /etc/alternatives/mozilla" returns something like

         /etc/alternatives/mozilla -> /usr/bin/mozilla-1.5

Oh, and "ls -l /usr/bin/mozilla-1.5" indicates that this is an actual app, 
not yet another symlink (or, just conceivably, a script)? (I wouldn't 
expect it to be a symlink, but odd behavior calls for thoroughness in 
troubleshooting.)

>Rather puzzling, then, that it doesn't launch mozilla, wouldn't you say?

Which "it" are you referring to?

 From this (plus the "which mozilla" result you previously reported), I 
would certainly expect that if you opened an xterm and entered "mozilla" at 
the command line, it would start the mozilla-1.5 application listed above.

But if you are referring to the Mozilla choice in Debian's standard X popup 
menu ... all this has nothing to do with what it will start. Or is that 
what your next sentence below refers to (I guess so ... whether you mean 
the menu choice points to /usr/bin/mozilla or to /usr/bin/mozilla-1.5, it 
should start whatever mozilla-1.5 actually is)?

>Incidentally, that's where the menu link points as well.

I'd like to be able to do more than keep asking you questions, but the fact 
that I don't run Mozilla here limits my potential to offer help (especially 
since the searchable package database seems still to be offline). Sorry. 
Perhaps there's another Debian user here who runs Mozilla? Preferably with 
Gnome?

Las thought ... took a quick look in the packaging system and noted that 
mozilla-firebird isn't (as I'd misunderstood from your earlier message) an 
older version of Mozilla. It is a separate and independent package (current 
version 0.7-5). Any "apt-get upgrade" should have tried to upgrade it as 
well as mozilla itself. You may have run into a (rare, thankfully) case 
where one or the other package is missing a "conflicts" entry it needs. 
Without actually trying to install them, I really cannot tell ... but you 
might check their contents lists to see if any of the filenames conflict, 
for example.

Or if your Firebird install was not through the Debian packaging system, 
you might want to check that it did not do something that apt's installer 
cannot cope properly with.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
