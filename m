From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 16:02:20 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410221533361.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <5.1.0.14.1.20041022123824.020548d8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041022123824.020548d8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello Ray:

On Fri, 22 Oct 2004, Ray Olszewski wrote:

> The vesa framebuffer is pretty generic; almost any *modern* video card
> should be able to drop back to its standards. But I do have older cards,
> like the ancient S3 I use in one of my test systems, that does not support
> the vesa framebuffer. If you have an older ATI card, you might have the
> same problem. I can't find a list of cards that work with vesa, at least
> not one that is less than 4 years old, so I can't check about your card for

Mine should be older than 4 years.  This was originally a P2 350 system
that I've been upgrading.  So the (again, onboard) integrated ati rage pro
in this was probably manufactured right around the 4 year limit.
Originally had 4MB video RAM which I upgraded to 8-12.

> If you have kernel source installed, look there in
> ./Documentation/fb/vesafb.txt for some technical discussion of how vesa works.

No source here, but I might try and take a look at that document somehow
anyway.  Thanks.

> You said, in your other message, that the display works with Debian-Sid.
> What exactly do you mean? That is, what kernel and version are we talking
> about here? Since one installs Sid (usually) by first installing Woody,
> then doing a dist-upgrade, it is possible that you are actually running
> some Woody kernel ... conceivably even the old 2.2.something that
> theinstaller uses ... unless you've explicitly switched to a Sid kernel.

2.6.5 kernel.  I upgraded a few times, but have been with the 2.6.5 kernel
for a couple months now.

> Your problem description, though, makes me think that your monitor won't
> sync at 1024x768, and that xdm "fixes" the problem simply because it
> switches to a supported 1280x1024 mode. (That *sort* of problem is not
> rare; I've had several monitors that supported 640x480 and 1024x768 in X,
> but made a mess of 800x600.)

1024x768 is listed in the manual as one possible resolution, though they
recommend 1280x1024.  I actually had a bit of trouble getting a 1280x1024
display on this a little while back (insufficient video memory) and could
only get it to do 1024x768.  So I know it will do 1024x768 under X, though
the crispness of the display leaves things to be desired--to say the
least.

> You might want to try 1280x1024 in vesa to see if it works
> there.  Depending on color depth, the values for that are:
>
>           8 bit          0x307   =       775
>          16 bit          0x31A   =       794
>          24 bit          0x31B   =       795

Ok.  I figured if it would do 800x600 framebuffer but not 1024x768, it
would be pointless to try anything yet finer.  But what do I know?  The
imps that inhabit these things often have totally unexpected tricks up
their sleeves, I've learned :)

> Finally, I'm at a loss as to why fbset is not working for you. But I don't
> have the only system with fbset installed here running at the moment. If
> none of the rest of this helps, post again and I'll try to look at that
> part of it.

I'm at a loss, too.  Meantime, I'll do some more fiddling and spare
you the bulk of the gory details, hopefully.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
