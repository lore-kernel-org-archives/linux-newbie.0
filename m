From: James Miller <jamtat@mailsnare.net>
Subject: what's my resolution?
Date: Thu, 29 Jan 2004 22:22:07 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401292206261.1495@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Is there a way I can tell, other than by staring at the monitor and sort
of "feeling," at what resolution my video is running?  I created/edited an
XF86Config-4 that's supposed to compel the display to run at 1280x1024
resolution, but I could swear it's at 1024x768 or maybe even 800x600.
This is a 17" LCD that really needs a fine resolution.  This is a Debian
Sid system btw, with an onboard Trident Cyberblade video output (shared
mem).

Relatedly, though I tried entering in the exact h/v sync values given by
the monitor's manufacturer (63.98h, 60.02v for 1280x1024) and though I
specified the 1280x1024 resolution when I set up X, I could not get a
display from it.  X would abort (no screens found error) and leave me back
at the command prompt.  I suppose to really trouble shoot this I'll need
to be more precise about the error messages and maybe give /var/log
output.  But for now I'd just like to ask generally what the problem could
be.  Is the Trident xserver I'm using incapable of generating these h/v
frequencies or something?  I finally managed to get a display - though one
I'm not very thrilled about - by increasing h/v values to a range that
includes values for 1024x768 as well (60-63.98h, 60-75v).

Thanks for input on this.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
