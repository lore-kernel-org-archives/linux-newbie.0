From: glenn <genright@paradise.net.nz>
Subject: Re: Configuring RH8.0 window manager
Date: Mon, 25 Nov 2002 00:16:08 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211250016.08885.genright@paradise.net.nz>
References: <200211232133.gANLXFP02853@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211232133.gANLXFP02853@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

On Sun, 24 Nov 2002 10:33, Haines Brown wrote:
> I'm trying to set up RedHat 8.0 and ran into some difficulties.
>
> 1. I can delete any icon from the desktop except for two. How do I get
>    rid of trash and home?

Are you using KDE or Gnome? I think these icons may be somewhat integral to 
the Window Manager like they are in windows. Other Window managers I have 
avalible in Mandrake include sawfish and blackbox. These are light options 
designed for speed rather than integrated platforms but they may be more 
suitable for you.

<snip unknown>

>
> 3. Window stacking is tied to focus, so that the window on top of the
>    stack is the focused window. I want to revert to my usual
>    preference which is for stacking to be in order of window creation,
>    so that what's on top is the newest window.

If you are using KDE then there should be a 'Control Center' in the main 
programs menu. Otherwise you should look up the docs for a configuartion 
utility which most of the desktops should have provided with the install.

>
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
>
> Haines Brown
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

remember 'man' is your freind if you know which questions to ask or you can 
spare the time wading through oodles of data. Of course we're always happy to 
help where we can :-)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
