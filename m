From: Ray Olszewski <ray@comarre.com>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 13:08:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20041022123824.020548d8@celine>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach> <Pine.LNX.4.58.0410221351360.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410221351360.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
 <Pine.LNX.4.58.0410221108580.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:00 PM 10/22/2004 -0500, James Miller wrote:
>Looking over the framebuffer how to again (fairly dated document by now)
>I'm beginning to wonder if maybe my video card doesn't require a special
>framebuffer module.  There, under section 5.6 "Got an ATI card?" they
>mention a particular module--atyfb.  In my initrd, on the other hand, I
>appear to have only the generic vesafb module available.  To test this, I
>suppose my options are: 1) recompile the kernel with built in atyfb
>module; 2) create a new initrd with atyfb in place of vesafb [and 2a)
>enter the correct command for loading that module into menu.lst].  Before
>going to the trouble of either of those (a big distraction considering my
>level of ignorance and the amount of study and experimentation I'd need to
>do for either), I'd just like to ask for an opinion about whether anyone
>thinks I might be on the right track to resolving my problem with not
>being able to get a 1024x768 console by trying one or other of these?
>Feedback, please?


The vesa framebuffer is pretty generic; almost any *modern* video card 
should be able to drop back to its standards. But I do have older cards, 
like the ancient S3 I use in one of my test systems, that does not support 
the vesa framebuffer. If you have an older ATI card, you might have the 
same problem. I can't find a list of cards that work with vesa, at least 
not one that is less than 4 years old, so I can't check about your card for 
sure. I think that as a general matter, folks in the i86 world don't worry 
much about kernel framebuffers; they are a LOT more important on some other 
srchitectures.

If you have kernel source installed, look there in 
./Documentation/fb/vesafb.txt for some technical discussion of how vesa works.

You said, in your other message, that the display works with Debian-Sid. 
What exactly do you mean? That is, what kernel and version are we talking 
about here? Since one installs Sid (usually) by first installing Woody, 
then doing a dist-upgrade, it is possible that you are actually running 
some Woody kernel ... conceivably even the old 2.2.something that 
theinstaller uses ... unless you've explicitly switched to a Sid kernel.

The Debian installer kernel doesn't use the vesa framebuffer. It uses the 
even more primitive, but as a result more general, vga framebuffer, one 
that does NOT work with X. It is *possible* that you are seeing a situation 
where the vga framebuffer works ... it's hard to imagine a video card on 
which this wouldn't work ... but the card is not vesa comparible.

Your problem description, though, makes me think that your monitor won't 
sync at 1024x768, and that xdm "fixes" the problem simply because it 
switches to a supported 1280x1024 mode. (That *sort* of problem is not 
rare; I've had several monitors that supported 640x480 and 1024x768 in X, 
but made a mess of 800x600.)

You might want to try 1280x1024 in vesa to see if it works 
there.  Depending on color depth, the values for that are:

          8 bit          0x307   =       775
         16 bit          0x31A   =       794
         24 bit          0x31B   =       795

Finally, I'm at a loss as to why fbset is not working for you. But I don't 
have the only system with fbset installed here running at the moment. If 
none of the rest of this helps, post again and I'll try to look at that 
part of it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
