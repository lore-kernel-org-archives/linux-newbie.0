From: Matthew Stapleton <matthewstapleton@juno.com>
Subject: Video settings within the XF86Config file
Date: Sat, 17 Aug 2002 13:02:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020817.130217.-194581.0.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Sorry for bombarding the list with messages this morning. However I have
some solutions to the problems I previously posted on this list as well
as new questions.

A few days ago I was having trouble getting my video card and monitor
setup for X.  As you know there are a couple of different options for
setting up X in Linux, namely, xf86cfg, xf86config, and xf86setup.  Well,
I decided to try xf86setup.  It was short and sweet but allowed X to
start up with 24 bit depth. But the downside was that the resolution was
still in 640*480.  I remembered seeing a message at the end of one of the
configuration utilities that said the configuration info was stored in
/etc/X11/XF86Config, so I decided to take a look...then modify as per the
instructions given in the man pages.  That is, I added a HorizSync line
set to 48kHz, and a another to adjust the screen size to 1024*768.  This
worked perfectly and the result was that I now have X running at 1024*768
with 24 bit depth.  

My new questions:

Do I need a VertRefresh line as well?  Is this beneficial, dangerous or
otherwise? 

Is it dangerous to set the HorizSync line to a specific rate rather than
a range? For example, should I have set the range to 30-50kHz rather than
just 48?  What is the up side and down side to this?  I do not want to
burn up my hardware.

As a note, the reason I set the HorizSync to 48 is because in the manual
for my monitor there is a chart that shows the present modes of the
monitor.  Mode 6)Vesa is 1024*768, HorizFreq 18kHz, VertFreq 60Hz.

Do I need to do something with the VertFreq setting for X?


Thanks again,
Matthew Stapleton
============================
http://webpages.marshall.edu/~staple12
Go there now! You know you want to.
============================
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
