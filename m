From: jamtat@mailsnare.net
Subject: Re: Getting a valid display under Debian revisited
Date: Tue, 9 Dec 2003 22:18:11 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0312092206490.777@debian-box>
References: <Pine.LNX.4.58.0312091843110.1018@debian-box>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0312091843110.1018@debian-box>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I was finally able to get a working display by using the vesa xserver.  I
can get 1024x768 with 16 bit color with this.  Strange that the S3
xserver, which is supposed to be for this card, would not work.  Any ideas
why, anyone?

I still get the /dev/input/mice missing directory error, but that doesn't
seem to interfere with X running.

The mouse cursor was acting really wildly, but I think that was because I
installed gpm.  Once I kill gpm (killall gpm), it behaves normally.  I
tried setting the mouse input device to /dev/gpmdata, as the manpage
suggests, but that did not resolve the problem: only killing gpm makes
the cursor behave normally under Xwindows.  Since I like to use alot
of virtual terminals, I'll miss having gpm functioning.  Anyone have any
ideas about how to make gpm work alongside Xwindows?

And, on a similar note: I like to have my virtual terminals set at vga=5
(I include that comment in lilo.conf).  However, once I fire up X windows,
then exit it, the console gets wierd.  About 1/4 of the console screen is
cut off at the bottom.  If I change vga=5 to vga=normal, I don't get that
lower 1/4 of the screen getting cut off, but I also get a text size I
don't really like in the virtual terminals.  Anyone have any ideas on how
to resolve this problem, or other insights into it?  Does it happen
because the xserver I'm using messes with the video BIOS?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
