From: Ray Olszewski <ray@comarre.com>
Subject: Re: more X problems
Date: Wed, 13 Nov 2002 12:13:20 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021113114914.0218ccf0@celine>
References: <Pine.LNX.4.44.0211122256450.21708-100000@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0211131215130.21708-100000@localhost.localdo
 main>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Comments added inline.

At 01:23 PM 11/13/02 -0600, James Miller wrote:
>Ok. I think I've now got my X problems down to more standard issues on
>this mnimal Slack 8.1 install (2.4.18 kernel). I was able to get the
>updated kernel to run, and I am no longer getting the crash with its log.
>But something is still wrong. I got the new kernel going, went through
>xf86config again. This time, I managed to find some sync values for my
>monitor (14" epson extended vga -old!) which I entered in (30-35.5; 70)
>and selected my S3 Trio 64V+ video card. There was a caveat about this
>card being "basically unsupported" - whatever that means.

It means you're on your own with it, as far as the X developers are 
concerned. It may work, or it may not ... but don't bother to send in bug 
reports.

>So, now, when I
>go "startx" from the command line, the HD runs and things seem to be
>happening, but the screen goes blank and just sits there. By "blank" I
>mean that it goes dark - like screen blanking when you have no screen
>saver. And, it just sits there. I expect it to give some sort of
>background - like crosshatching - and for an "X' to appear for the mouse
>cursor. But no such thing ever happens. It just sits there blank (no
>message about a server crash, no odd activity like HD churning). So, I'm
>not quite sure where to go from here. Could someone advise me?

This could be any of several things ... especially with an unsupported card 
... but the most likely is that you have told the X server to use a refresh 
rate (an hsync or vsync ... apparently the variable names these days are 
HorizSync and VertRefresh) that your monitor will not support. Double check 
your values, or switch to more conservative ones.

Also, what default screen size and bit depth are you using? (Check the X 
error log, or redirect X's STDERR to a file, for example with 
"startx >xerrors.txt 2>&1".)  Try making 640x480, 8-bit color the first 
choice, as really old monitors may not support anything better (but rarely 
will fail to support it).

Do you have access to the system from anything othet than the console? (For 
example, can you ssh or telnet in, or do you have a serial display 
connected?) When the screen is "dark", if you press CTRL-ALT-F2, do you get 
a console login back? (This will work for some monitors with sync problems, 
but not all ... you may need to power-cycle the monitor after you press the 
key combination ... and I don't know that even that will work reliably.)

>I
>should also mention that I don't have a window manager configured yet,
>though I do have one installed - fvwm95. I assume that is a window manager
>because it has the letters "wm" in its name (hope I'm right). But I
>just don't know if I need a window manager to get any display at all out
>of X.

fvwm95 is a Window Manager, the one that (if you don't look too closely) 
resembles Windows 95's GUI. There are newer ones, but this one is perfectly 
functional and a resaonable choice for low-end systems (other good choices 
for low-end systems are blackbox, my own preferred WM, and IceWM). And no, 
you don't need a WM to get "any display at all",  just to get the modern 
conveniences (like menus and multiple displays) we expect from GUIs.

>In closing, I'll just reaffirm my state of confusion regarding the way
>the gui works under Linux. Despite Ray's helpful comments to some
>questions I posed on this list earlier about how it all works, I've become
>even more confused. There are things called, for example, "gdm" or "kdm".
>I take the "dm" part to stand for "display manager." But I don't know how
>display managers relate to window managers or the other things connected
>with X that I asked about previously.

These apps (xdm is the one I'm actually familiar with) are login managers 
-- they let you start X from your init scripts or from /etc/inittab 
directly (I think Slackware does it the second way, in runlevel 5) and log 
in directly to X, instead of logging in to a console and running "startx".

>Then, there are "session managers,"
>which are also a subject of confusion in all this.

I'm not acquainted with this term in an X context.

>To top it all off, I
>read an article at Linuxworld on X and Linux display that claimed that
>Gnome and KDE are *not* window managers, but rather thay they *contain* a
>window manager.

Each has a "preferred" WM associated with it (or at least Gnome does; I'm 
insufficiently familiar with KDE to be sure about it). Nonetheless, Gnome, 
and probably KDE, will run on top of any reasonably capable WM.

>So this seems some sort of meta-category with regard to
>the 3 part scheme Ray provided in his helpful comments. I don't know if
>I'll ever be able to grasp all this. But this can give an idea of how
>little I know and thus what help might be suitable to offer with respect
>to my X problems.
>
>Hopefully, you won't say "go back to Windows, you dummy!" :)

Perish the thought. I might say such a thing to someone who is both 
uninterested in trying to understand his or her system, -AND- who expects 
others to do his or her work for him or her, but you clearly do not fall 
into that category.
(Though, sadly, I do see such postings on occasion ... rarely here, 
thankfully.)

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
