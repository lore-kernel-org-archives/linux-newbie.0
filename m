From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: xsession
Date: Fri, 03 Jan 2003 13:55:48 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E158854.50905@rug.ac.be>
Reply-To: kurt.sys@rug.ac.be
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I have a Debian X session question. I run kdm as display manager and 
blackbox as window manager. When I startup blackbox, I would like to 
execute a small script for the slit in blackbox (just putting some 
applications in the slit). I just don't manage to execute that script. I 
copied the Xsession-script (/etc/X11) to my own home directory and 
renamed it to '.xsession'. I added the line 'bbkeys -w &' to the 
beginning of the file (just to test if it would work), but bbkeys won't 
start and there's no slit. However, if I run this command from a console 
in blackbox, it works (as well as the complete script I wrote to 
configure the slit). So, I'm wuite sure the script '.xsession' in my 
home directory is not started. I though this script would be used when I 
start blackbox, but apparently it's not.
Anyway, how can I start a script for blackbox whenever I startup 
blackbox? (I guess '.xsession' is not the most optimal solution, since 
it's not only for blackbox, but I was just trying... of course, if I can 
make my script to run only if a particular windowmanager, e.g. blackbox 
or windowmaker, is started, it would be better.)

Kurt.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
