From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 23:40:06 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410222229140.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221351360.1287@debian-emach> <417968FE.3070405@verizon.net>
 <Pine.LNX.4.58.0410221604590.1287@debian-emach> <41798CB8.4010701@verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41798CB8.4010701@verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The framebuffer how to documentation actually gives two lilo arguments for
the ati cards: vga=791 ("to make the display sane" as they say) and
video=atyfb:1024x768@75 after the "append" argument.  They presume you've
compiled the atyfb module into your kernel (which I haven't, though I made
an initrd with that module in it).  I haven't quite understood a couple of
things--one being how to adapt the lilo stuff to grub.  I see no "append"
argument in my grub file, nor can I find much on the web about how lilo
arguments translate to grub ones.  Overall the Grub documentation stinks:
I've managed to turn up nearly nothing on the various possible video= vga=
arguments and variants, how to use them and what they do.  The man page is
kind of worthless.  Plenty of folks mention in passing such lines from
their menu.lst files, but there's not alot of consistency.  The other
thing that's confusing me is what the relation between vga= and video= is:
are they two separate commands that don't interfere with one another or
are they mututally exclusive?  The lilo.conf example given in the
framebuffer how to seems to indicate that they are separate and do
different things, not being mutually exclusive.  When I've tried vga=791
and video=atyfb:1024x768 together in my menu.lst (vga= first) though, I
see in /var/log/messages that the atyfb module doesn't load and get
connected with my video hardware.  When I leave out vga= though, the
module does load and get assigned to the hardware.  But an error appears
there about not being able to initialize vesafb0.  So, can anyone help me
figure out the relation between these two?  Do I need them both, and in
some particular order?  Or is one or the other going to work for me?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
