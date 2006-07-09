From: cr <cr@orcon.net.nz>
Subject: Re: How to make KDE default windows manager?
Date: Mon, 10 Jul 2006 08:43:47 +1200
Message-ID: <200607100843.48015.cr@orcon.net.nz>
References: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Sat, 08 Jul 2006 06:10, Jesse wrote:
> I installed kde using the apt-get utility, however, I want to run it as my
> default windows manager.  How do I do that?  I'm using Debian Linux, and
> right now, it comes up to a log in screen where I can choose IceWM, Gnome,
> and some others as my windows manager, but KDE is not one of those.  Any
> ideas?
>
> Thanks,
> Jesse

I don't know the whole answer but I can maybe tell you where to look. 

I assume you're using Debian Sarge with a graphical login?  (The screen that 
comes up with a box to enter passwords & stuff)
(I'm using Sarge / Gnome but without the graphical login)

You may need to do some fiddling on the command line - as always, save all the 
bits (by renaming them to <filename.old> before you change anything) so you 
can get back.   There are three files that apply, I think:

The following links apply by default:
1.  /etc/alternatives/x-session-manager  ->   /usr/bin/gnome-session
2.  /etc/alternatives/x-window-manager  ->   /usr/bin/metacity
3.  /etc/X11/default-display-manager  is a file that says   /usr/bin/gdm  - 
this sets the graphical login.   Replace it with a blank file for text-only  
login, or I guess there's a kde login equivalent   (IIRC it used to be called 
kdm  in Woody, but there doesn't seem to be a /usr/bin/kdm in Sarge).   
You can always just do a text login and type  'startx' to start up the GUI, in 
fact that's not a bad idea, if something in the GUI seriously doesn't work 
you can drop back to the command line and put it back the way it was.
Then when (if) it all works, reinstate the graphical login.

In /usr/bin,    ls kd*   shows a lot of kde-related files, some of which will 
be the ones you need.   

1.  If you change the link for x-session-manager to point to startkde as 
follows:
In /etc/alternatives:
ln -s /usr/bin/startkde  x-session-manager

2.  I'm not sure which of the many /usr/bin/kd*  files you need to link 
from /etc/alternatives/x-window-manager, maybe some Googling around the KDE 
webpages might help.

As I said, I don't run KDE, but the above procedures (changing those three 
links/files) works fine for me when swapping between Gnome and Windowmaker.

Disclaimer:  I'm absolutely not an expert on Debian, even less on KDE.   Hope 
this gives you a start.

HTH

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
