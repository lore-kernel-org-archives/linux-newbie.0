From: Heimo Claasen <hammer@revobild.net>
Subject: Re: Mandrake 8.1??
Date: 09 Mar 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303090415.h294F6PX003541@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

That looks to me as if the GUI (KDE in this case) starts up with the
lowest resolution, say 640x480 - does cycling through screen
resolutions (with [CTRL]-[ALT]-[+]) give you any other/larger screen
dimension ? (The pop-up windows should be significantly smaller then,
and be situated all inside the visible window on the screen.)

If not, it could be a matter of the very X server configuration.
Try to re-configure X - take care to start with the lowest colour
depth/range (8 bit, 256 colours) in order to get the largest possible
band of resolutions accepted; it's easier to do that in the Mandrake
setup (or with Xconfigurator if it's there) than with tinkering with the
configuration files directly.

The Mandrake X-install routine is in fact quite good, gives immediate
feedback (with the "Test now" step), allowing to variate each value
entered immediately and to try out if it works.

(It's a drag with Debian, where you get the [typically wrong] result
only after the whole installation procedure and after starting X; or
rather, after failing to get somewhere then.  And in addition, there are
real nuisances built-in there: the value to enter for video RAM _must_
be given wrong in order to get a right result; or, the [screen]
"modules" default would most certainly result in failure, while there's
not the least meaningful indication which choices would be appropriate.
Sheer horror this, can make you waste days on end without getting the
specific combo of card/monitor to work ever in its best way.  The Mdk
procedure is way ahead.)

// Heimo Claasen //<revobild at revobild dot net>// Brussels 2003-03-08
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
