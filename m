From: Ray Olszewski <ray@comarre.com>
Subject: Re: Trying to get GUI'ed
Date: Thu, 24 Oct 2002 23:22:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021024230507.0215c7e0@celine>
References: <200210250441.g9P4fEq30914@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210250441.g9P4fEq30914@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

You forgot to cc the list with your message; I added it back in this reply, 
which includes your complete message at the end.

First, to avoid conflicts, you do not need to remove the various packages 
from your filesystem. All you need to do is not run them (or in the case of 
libraries, not run programs that link to them).

In principle, you could run X with no Window Manager, just starting a 
single xterm when the X server starts. I've never done this myself (I have 
read about the procedure, in a *very* old book), but perhaps when he sees 
this message, Lawson will sketch out the details of how he did it.

What I would suggest as a practical solution is for you to run X with one 
of the lightweight Window Managers ... say blackbox or icewm, or maybe XFce 
(I've not tried this last one myself) ... and once it starts, use its menu 
system just to start a single xterm. From there, start the static version 
of VueScan.

I would recommend that you do this (start the X server) from a console. 
That is, you log in to a console and run the "startx" script to run the X 
server, rather than using xdm or one of its cousins. By editing the config 
files startx (and xinit, which the script runs) loads, you can select your 
WM and the other items that are available in your pop-up menu.

Although X itself is pretty standard, the setup details are somewhat 
distribution specific, and you've reported trying so many distros hat I 
don't know what you are running at the moment. With Debian, for example, 
one way is to do a standard, minimal install, then disable the init-script 
link that runs xdm. Then you can configure X in any of the usual ways (the 
"dpkg --configure" choice works pretty well with X for me) and "startx" 
will work fine.

One last question ... I took a quick look at the (fairly brief) Linux notes 
on the VueScan site. From what they write there, VueScan looks like a 
command-line app, not a GUI app. If I am correct ... is there a reason why 
you do not want to run this from a console? Why do you need X at all (for 
this app)?

At , Heimo Claasen wrote:
>I try to put it simplistic: If you run X you get just the ("graphcical")
>screen.
>What is the absolute bare minimum to get this X screen _with_ some
>possibility to input a command (e.g., for to run some application
>program) - in fact, just an Xterm for instance ?
>
>An HOW would I set it up / launch it ?
>
>(The application program, Vuescan, is statically linked and wouldn't
>need to access any additional shared libraries thus.)
>
>Next step: Which of the major (X window-) window management and GUI-
>programm packages could be safely revomed from the "system", without
>putting that "bare bones" X at risk ?
>
>(Can the whole load of Gtk/Qt go, for instance ?)




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
