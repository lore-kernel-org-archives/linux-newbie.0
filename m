From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: switching window managers
Date: Mon, 24 Mar 2003 17:21:44 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303242221.h2OMLidq021601@hartford-hwp.com>
References: <20030324191235.14120.qmail@linux.ik5bcu.ampr.org> <200303242143.h2OLhMo7020556@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200303242143.h2OLhMo7020556@hartford-hwp.com> (message from
	Haines Brown on Mon, 24 Mar 2003 16:43:22 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux@hartford-hwp.com
Cc: ik5bcu@tin.it, linux-newbie@vger.kernel.org

> > Hello Haines,AFAIK if you remove your ~/.gnome* dirs. then you
> > will be able to restart a fresh gnome desktop...
> 
> I presume that since gnome is set as my desktop manager, these files
> would be regenerated without my having to restart gnome explicitly.

You are right that the ~/.gnome* files are regenerated, but this did
not fix the problem, which evidently lies at a deeper level (even
though not all users are affected). Even after removing the ~/.gnome*
files, when I startx gnome-panel starts to load, but crashes, probably
when it tries to load the window switcher. 

The man gnome-panel says:

> The Panel was designed to be highly configurable. You can easily
> customize its behavior and appearance and add or remove objects to
> suite your personal needs and preferences.

But it says nothing more than this. It apparently assumes you will
configure gnome-panel with the mouse rather than edit its files. But
when a problem comes up such as mine, the panel loop means I can't get
a workable desktop, and so I have no mouse to configure panels to
stop (remove from panel) the workplace switcher. Since there's a mouse
option to remove the workplace switcher from the panel, there's got to
be a command to do it, but how is one supposed to find out what it is? 

There must be more information on gnome-panel somewhere that goes
beyond simple panel configuration with the mouse. Until I come across
it, I can't find out whether the workplace switcher is a separate
executable, where it is, or if it has a configuration file.
 
Haine
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
