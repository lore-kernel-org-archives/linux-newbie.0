From: Peter <heisspf@skyinet.net>
Subject: Keyboard Indicator
Date: Wed, 14 Dec 2005 10:38:54 +0800
Message-ID: <20051214103854.7f327198@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

Since the keyboard indicator applet on the gnome panel does not function
properly I put my own custom application launcher to switch to another
kb layout including corresponding country flags.

One problem is I sometimes forget to change back to let say US KB. I
thought of having an xmessage display when I have switched the kb layout.

In the command line for the applet where I have e.g. "setxkbmap de" I tried to
add " xmessage Kb set DE" which does not work.

Is there a way to put 2 commands or more in a command line applet?

The problem with the keyboard indicator applet on the gnome panel is that it
will only change when one first gets to properties on the applet. That is in 2
of my distros. Previous applets did work well including showing of country
flags.

Thanks & regards
--- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
