From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux Mandrake Startup
Date: Thu, 02 May 2002 19:07:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020503020706.00fd7ce0@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Richard Foy <rfoyh@earthlink.net>, linux-newbie@vger.kernel.org

At 05:20 PM 5/2/02 -0700, Richard Foy wrote:
>Up until a year ago I used Amigas. Then I got a laptop pc running windows.
>
>Recently I got a PC box with a very simple "Internet Appliance" linux system
>on it. Now I have installed Linux Mandrake 7.2. I have managed to get it to
>startup and show a screen where I can login as root or as a user, and thus
>get into a bash shell.
>
>However, I haven't found out how to get into a graphical interface, either
>KDE or Gnome. when the system is booting it runs by lots of things but I
>don't see anything that appears to me that would allow me to get into KDE or
>Gnome.


I don't know Mandrake specifically. But during the install process, yuo
should have been asked about installing X (or X11 or X11R6) ... providing
information about your video card, your monitor, and perhaps other things.
KDE and Gnome are both windowing environments for X, and you might have been
asked about installing either or them, or Mandrake may automatically select
one to install.

There are two ways to start X ... as the default login method or from the
command line. Apparently your system does not use it for login; to start it
from the command line, type "startx" and see if you have any luck. If not, X
may not be installed, or there may be an error in installation that prevents
it from starting.

A Mandrake user may be able to give you more help, help that is specific to
your distro. My comments are at the generic-Linux level.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
