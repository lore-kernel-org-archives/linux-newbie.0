From: James Miller <jamtat@mailsnare.net>
Subject: wierd video behavior question
Date: Thu, 4 Mar 2004 22:03:42 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403042149510.1024@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I had sort of an anomalous occurence involving video on my Debian Sid
machine I'd like to ask for some clarification on.  This machine has
"shared video memory" - meaning the video grabs a slice out of RAM for its
needs, as I understand it.  In fact, I had to up the amount being alloted
to video under BIOS setup, since I was having trouble getting a display
at the resolution I needed (up'ed it to 8MB).  Anyway, the problem
manifested itself as follows: I had several applications and xterms open
and running - actually for several days.  Then, I needed to open a fairly
long text file and delete most of its contents.  I did this using Nano
(ctrl-k).  Part way through that deletion of a few thousand lines, the
video began to get really wierd, with alot of streaking across the screen
horizontally whenever alot of processor cycles were being consumed.  I
finished deleting the stuff from the file and started closing
applications, thinking this would return the display to normalcy.  Well,
it didn't: it seemed like whenever the processor would have to make any
effort, the horizontal streaking would start.  Even moving the mouse
around was causing this to happen.  If the computer would just sit there
with no input, the display looked fairly normal, but as soon as I'd do any
input, the screen would start the horizontal streaking I mentioned.  I
decided to just kill X once I closed all applications, then start it again
to see if this would help.  I did ctrl-alt-bkspce, then logged in and
issued startx.  Still the horizontal streaking was going on with mouse
movements, oopening of an xterm and so forth.  I finally just decided to
reboot.  That returned the display to normalcy.

So, what happened to my display?  I'm thinking the portion of RAM alloted
to video must have gotten corrupted or something.  Does this sound
reasonable?  Anyway, suggestions for what may have been causing the
problem will be appreciated - I'm hoping to learn something about the way
my computer and its operating system works out of this.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
