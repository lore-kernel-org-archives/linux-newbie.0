From: James Miller <jamtat@mailandnews.com>
Subject: more X problems
Date: Wed, 13 Nov 2002 13:23:23 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211131215130.21708-100000@localhost.localdomain>
References: <Pine.LNX.4.44.0211122256450.21708-100000@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0211122256450.21708-100000@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Ok. I think I've now got my X problems down to more standard issues on 
this mnimal Slack 8.1 install (2.4.18 kernel). I was able to get the 
updated kernel to run, and I am no longer getting the crash with its log. 
But something is still wrong. I got the new kernel going, went through 
xf86config again. This time, I managed to find some sync values for my 
monitor (14" epson extended vga -old!) which I entered in (30-35.5; 70) 
and selected my S3 Trio 64V+ video card. There was a caveat about this 
card being "basically unsupported" - whatever that means. So, now, when I 
go "startx" from the command line, the HD runs and things seem to be 
happening, but the screen goes blank and just sits there. By "blank" I 
mean that it goes dark - like screen blanking when you have no screen 
saver. And, it just sits there. I expect it to give some sort of 
background - like crosshatching - and for an "X' to appear for the mouse 
cursor. But no such thing ever happens. It just sits there blank (no 
message about a server crash, no odd activity like HD churning). So, I'm 
not quite sure where to go from here. Could someone advise me? I 
should also mention that I don't have a window manager configured yet, 
though I do have one installed - fvwm95. I assume that is a window manager 
because it has the letters "wm" in its name (hope I'm right). But I 
just don't know if I need a window manager to get any display at all out 
of X.

In closing, I'll just reaffirm my state of confusion regarding the way 
the gui works under Linux. Despite Ray's helpful comments to some 
questions I posed on this list earlier about how it all works, I've become 
even more confused. There are things called, for example, "gdm" or "kdm". 
I take the "dm" part to stand for "display manager." But I don't know how 
display managers relate to window managers or the other things connected 
with X that I asked about previously. Then, there are "session managers," 
which are also a subject of confusion in all this. To top it all off, I 
read an article at Linuxworld on X and Linux display that claimed that 
Gnome and KDE are *not* window managers, but rather thay they *contain* a 
window manager. So this seems some sort of meta-category with regard to 
the 3 part scheme Ray provided in his helpful comments. I don't know if 
I'll ever be able to grasp all this. But this can give an idea of how 
little I know and thus what help might be suitable to offer with respect 
to my X problems.

Hopefully, you won't say "go back to Windows, you dummy!" :)

Thanks, James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
