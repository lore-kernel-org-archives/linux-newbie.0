From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Odd path changes with new Mozilla in Debian Sid/unstable
Date: Tue, 16 Dec 2003 09:43:54 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1071528233.22206.38.camel@DebiAnarchist>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

This is not exactly a problem, since currently Mozilla appears to be
working. I'm curious as to why the following has happened:

1. I updated to the latest Mozilla in Debian Sid by doing an "apt-get
install mozilla".This installed Mozilla 1.5-3.

2.Initially certain functions failed to operate. For instance, using
Google was impossible as the browser would not send my typed search
terms either with the "enter" key or by clicking on the relevant
"button". In composer, similarly most of the buttons were unresponsive.
In the mail program several icons were greyed out, and so on...

3. I did a "dpkg-reconfigure" mozilla, and the application sprang back
to life, but now when I try to start mozilla from the menu (the browser
component) I get Mozilla-Firebird instead. (Firebird is 0.6.1) Mozilla
--help returns the information: "Usage: /usr/lib/mozilla/mozilla-bin
[options..] [URL], so I created a launcher with the /usr/lib/... path
and this works fine. (This path is not in my $PATH.) 

Changing the menu entry in gnome, I havent yet worked out how to do.

Can anyone explain what might have happened? BTW, "which mozilla"
returns /usr/bin/mozilla, and checking "ls -al /usr/bin/mozilla" shows
that it is a link to "/etc/alternatives/mozilla".
"/usr/bin/MozillaFirebird" is not a link; it appears to be the
executable binary, or the launch script for it.

I'm cautious about altering the link for /usr/bin/mozilla, as I assume
it is a way for Debian to find the binary... but then the link doesn't
do what it's designed to do!

Ideas?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
