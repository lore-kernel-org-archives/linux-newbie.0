From: Haines Brown <brownh@hartford-hwp.com>
Subject: gnome-panel crash loop
Date: Thu, 20 Mar 2003 18:04:19 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303202304.h2KN4Jpl002362@hartford-hwp.com>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux@hartford-hwp.com

I'm running RedHat 8.0, and while using IceWM window manager, hit
Alt-F4. It should have been to move a window, but instead X crashed. I
couldn't restart X, and so got rid of my ~/.Xclient files to get back
to my default gnome window manager. 

While this allowed me to start X, when the desktop loads, logged on as
either user or root, when it gets part way through loading
gnome-panel, the gnome-panel crashes. A dialog comes up telling me to
look at the log (nothing of interest there), and when I dismiss the
dialog, the gnome-panel starts to reload, and crashes again, and I'm
in a loop. I'm forced to work from the console.

If I had stepped on my gnome configuration, I should think it would
affect use or root, but not both. I could run IceWM and use its panel,
but I don't know how to configure gnome not to run gnome-panel. I've
no .xinitrc in HOME, but in /etc/X11/xinit, but nothing in it or in
xinitrc about gnome applications.

Haines Brown 



 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
