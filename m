From: James Miller <jamtat@mailsnare.net>
Subject: Re: longstanding Linux irritants: suggested solutions?
Date: Tue, 13 Apr 2004 12:42:06 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0404131215470.743@debian-emach>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach> <407B2158.6070702@jpl.nasa.gov>
 <Pine.LNX.4.58.0404122152500.688@debian-emach> <407B7EE3.4000206@comcast.net>
 <Pine.LNX.4.58.0404130954380.1012@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0404130954380.1012@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've hacked together a pseudo solution to the 2.6.4 kernel/mouse problem,
but created others in the process.  The particulars of why things are the
way they are and why what I did resolved something largely escape me.  But
while I still retain some scraps of insight into it, I think I'll make a
post here about it on the off chance it may help someone else, or that it
may generate responses from those more knowledgeable who may be able to
help me work out problems that remain or have been newly created.

I'll start with the following.  Someone on another list suggested adding
the line "psmouse" to the file /etc/modules - this so a certain
mouse-related module would get loaded at bootup.  This did not help at all
- same frozen mouse cursor I had before.  I tried changing the configured
mouse in XF86Config-4, editing /etc/gpm.conf according to things I was
finding in web seraches, but nothing seemed to make the cursor respond to
mouse movements using the 2.6.4 kernel.  Neither was the mouse cursor ever
working in console mode (gpm was not functional).  Then, I found something
that talked about another module needing to be loaded for ps/2 mice - it's
called "mousedev."  At the same site, I learned that /dev/psaux has been
done away with by the 2.6.x kernels - much to that author's chagrin.
Since I had XF86Config-4 pointing at /dev/gpmdata, and gpm.conf, in turn,
pointing at /dev/psaux, it seemed likely that I had no referent for X to
find the mouse's physical location.  Then, I ran across a site that said
to look at the output of cat /proc/bus/input/devices, which I did.  This
is where I found out where the 2.6.4 kernel I was trying to use was
"looking" for the mouse (what I think of as the mouse's physical location,
though that's likely a wrong understanding): it expected a mouse at
/dev/input/mouse0, it seems.  When I entered that in to XF86Config-4,
after having modprobed the additional mousedev module, the mouse cursor
began to respond to physical movement of the mouse.  So, I got it working
like that.  gpm, however, has ceased to work.  I can't get the mouse
cursor to appear or move in console mode.  I tried pointing it to the same
/dev/input/mouse0 location, but that did not make it work.  I'm not sure
what my next step should be on that.  Anyway, I added mousedev to
/etc/modules as well, then tried booting with the 2.4.25 kernel.  Now, the
mouse cursor is frozen under the 2.4.25 kernel: it does not respond to
physical movement of the mouse.

Moral of the story: man with 2 kernels kills one mouse (an ancient Incan
proverb :) ).  At least for now, it is not possible for me to boot between
2 kernels and have a working mouse: I must use either one or the other.
And I'll have to determine what further conjuring I'll need to do to get
gpm working again under 2.6.4.

Further input welcomed.

Thanks, James

PS Just noted that the console beep has ceased working under 2.6.4 as
well:  another module loading problem?  We'll see . . .
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
