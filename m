From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Configuring RH8.0 window manager
Date: Mon, 25 Nov 2002 18:03:56 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211252303.gAPN3u305042@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

   > 1. I can delete any icon from the desktop except for two. How do I get
   >    rid of trash and home?

   Are you using KDE or Gnome? I think these icons may be somewhat integral to 
   the Window Manager like they are in windows. 

Wow. I thought integration was a feature of Windows, rather than
Linux! I supposed I could get the source for gnome and edit out where
it drags in the icons, and then compile it and fold it in. But I'm so
unsure of myself I'd screw things up irrevocably.

   > 3. Window stacking is tied to focus, so that the window on top of the
   >    stack is the focused window. I want to revert to my usual
   >    preference which is for stacking to be in order of window creation,
   >    so that what's on top is the newest window.

   If you are using KDE then there should be a 'Control Center' in the main 
   programs menu. Otherwise you should look up the docs for a configuartion 
   utility which most of the desktops should have provided with the install.

I'm using gnome. There is a little utility for setting focus behavior,
but that's not what I need. What I want to do is to have stacking set
a window to the bottom. I've been doing that because I was running
Ximian. Enlightenment has the same feature, but RH8.0 does not seem to
include Enlightenment. 

   > 4. I want to configure xterm, but ~/.Xdefaults no longer understands
   >    statements such as
   >
   > 	      XTerm*Font: 7x13bold
   > 	      xterm -geometry 20x5-0-0 &
   >
   >    Where now does one now define things like fn, bg, fg, etc.?
   >
   >    Ideally I'd like to customize an xterm by which user invoked
   >    it. For example, if I issue the su - user command in an xterm, the
   >    xterm would use user's xterm configuraiton. As things now stand, I
   >    can achieve this only by creating a second xterm icon, and
   >    configure its xterm command to pass its own set of options to the
   >    xterm command.

I managed to solve this problem a bit. I have ~/Xdefaults define the
xterms in general, and then I crated a launcher for user's xterm and
one for root's xterm so that they are distiinguished by their
background colors and position on the desktop. This is the usual
approach. My problem was that the examples in Running Linux used some
upper case letters that are now deprecated and the configurability of
the xterm launcher snuck up on me.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
