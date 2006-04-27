From: Hal MacArgle <haltec@kvinet.com>
Subject: Fedora core 4 and Totem Media Player??
Date: Thu, 27 Apr 2006 16:04:18 -0400
Message-ID: <20060427200418.GA1963@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Greetings am in trouble again researching media playing..

Fedora core 4, default desktop install that includes the totem media
player launchable from one of the pull down menus..

Plays a selected known good avi file/s/ to test and the screen looks
like a fractal display with coloured lights and circular swatches of
colour that resembles a circular saw... (Audio is fine)

The docs say that totem is a front end for xine but I don't see xine
anywhere in the apps... A Web lookup said to use totem-xine, but
that's not in evidence either in the installation or installation
DVD... I can only conclude that xine is included with the default
totem package.. Nothing I do seems to change anything..

I invoked totem from a terminal command line and got the following
report that I don't understand.. Running that started the viewing
window and ran the avi file just like a mouse click:

------------------------------------------------------------------------------

(totem:4011): GLib-GObject-WARNING **: gsignal.c:1719: signal
** `got-redirect' is invalid for instance `0x9b84e90'
 Message: don't ** know how to handle EMPTY
------------------------------------------------------------------------------

I found several sites on the web with a totem version earlier than
the one bundled, all for Fedora core 3, not 4...

I invoked ldd totem and found no missing dependencies... I'm stuck..
<g>

Any suggestions or words of wisdom?? TIA.. (I was so happy with CLI
for so many years.) <grin>

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
