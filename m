From: Haines Brown <brownh@hartford-hwp.com>
Subject: Configuring RH8.0 window manager
Date: Sat, 23 Nov 2002 16:33:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211232133.gANLXFP02853@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I'm trying to set up RedHat 8.0 and ran into some difficulties. 

1. I can delete any icon from the desktop except for two. How do I get
   rid of trash and home?

2. Although DEL is mapped to "remove," the window manager catches it
   and instead pops up a window menu window. How do I kill that
   behavior and get the DEL key to delete?

3. Window stacking is tied to focus, so that the window on top of the
   stack is the focused window. I want to revert to my usual
   preference which is for stacking to be in order of window creation,
   so that what's on top is the newest window.

4. I want to configure xterm, but ~/.Xdefaults no longer understands
   statements such as 
	      
	      XTerm*Font: 7x13bold
	      xterm -geometry 20x5-0-0 &

   Where now does one now define things like fn, bg, fg, etc.?

   Ideally I'd like to customize an xterm by which user invoked
   it. For example, if I issue the su - user command in an xterm, the
   xterm would use user's xterm configuraiton. As things now stand, I
   can achieve this only by creating a second xterm icon, and
   configure its xterm command to pass its own set of options to the
   xterm command.

Haines Brown 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
