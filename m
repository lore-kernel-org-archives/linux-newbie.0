From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Wed, 6 Apr 2005 16:13:09 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050406120016.0201f1f8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 6 Apr 2005, Ray Olszewski wrote:

> At 01:38 PM 4/6/2005 -0500, James Miller wrote:
<snip>> pas2 io=0x388 irq=3 dma=5
>> sb io=0x230 irq=5 dma=1
>
> You are pretty much doing what I meant to be suggesting. You do need to adapt 
> this stuf to /etc/modules, not to grub.
>
> Note though that the LILO parameters associate ioport 0x220 (and the related 
> dma and int settings) with both pas2 and sb. I'm not sure what to make of 
> that either ... but my best *guess* from reading the doc file is that you are 
> not enabling SB emulation (and you probably want to) ... look at the example 
> for *not* enabling SB in the doc and you'll probably see what I mean.
>
> What to do about it? You probably need to include a second set of arguments 
> on the pas2 line, probably labeled sb_io and so forth ... to judge from this 
> short excerpt from the driver source(./drivers/sound/pas2_card.c):
>
>        cfg.io_base = io;
>                cfg.irq = irq;
>                cfg.dma = dma;
>                cfg.dma2 = dma16;
>
>                cfg2.io_base = sb_io;
>                cfg2.irq = sb_irq;
>                cfg2.dma = sb_dma;
>                cfg2.dma2 = sb_dma16;
>
> (When the docs are badly written ... and the ones for this driver certainly 
> are, if only because they do not include a list of legal module arguments ... 
> there's no substitute for reading the source.)
>
> Also note (this part *is* in the docs) that SB emulation with this card uses 
> dsp1 and audio1, while native-mode is dsp0 and audio0 ... you may want to 
> change which sound device are outputting to, since I'd bet the SB emulation 
> is better behaved than native mode.
>
> Finally, it is unclear to me whether this extended argument list replaces or 
> combines with the "sb" line you have. I'd try it both ways and see what 
> works.

With the separate sb line as in my last post, here's what I get in dmesg 
about the module:

Apr  6 12:45:13 localhost kernel: Pro Audio Spectrum driver Copyright (C) 
by Hannu Savolainen 1993-1996
Apr  6 12:45:13 localhost kernel: sb: Init: Starting Probe...
Apr  6 12:45:13 localhost kernel: sb: Probing legacy card with io=230, 
irq=5, dma=1, dma16=-1
Apr  6 12:45:13 localhost kernel: sb: dsp reset failed.
Apr  6 12:45:13 localhost kernel: sb: Init: Done
Apr  6 12:45:13 localhost kernel: Capability LSM initialized

With sb_irq=XXX (and so forth) in the same line as pas2, I do not get 
these sorts of error messages. Just a clean:
Pro Audio Spectrum driver Copyright (C) by Hannu Savolainen 1993-1996

But sound still works very poorly. Very scratchy when I play mp3's/ogg's 
with pauses when I open an application, switch terminals or some other 
computer activity takes place.

Here's one interesting side-note. Among the things I read I found 
reference to the opl3 module with the io=0x388 parameter. Thought I'd add 
that in as well (to /etc/modules). It did not cause any sort of error 
messages. But most interestingly, where pas2 does not seem to get 
associated with an io (according to cat /proc/ioports output)--no matter 
whether I specify 0x230 or 0x388--opl3 does, in fact, get associated with 
io 0x388 when I load this module as specified (again, according to cat 
/proc/ioports output).

Changing which sound device output goes to seems worth testing. Only 
problem is I have no idea how to do it. Bet it's not a system-wide 
setting, but something that needs to be input for each application.

> But please remember, James, this is all an no more than an extended guess ... 
> something that might guide you experimenting a bit if you want to spend the 
> time on it. Nothing more.

A trip over to Frys (or the local equivalent) is getting more tempting all 
the time. Any recommendations for reasonably-priced, Linux-compatible 
cards? I'm no kind of audiophile: heck, if I were, I wouldn't be using a 
computer to listen to sound. Just something serviceable. I'm happy with 
the "sound quality" (I being a former audiophile I use that phrase 
loosely) I get out of a Soundblaster awe 64 on my other machine.

> Is there any better context fo this message than what you've provided? 
> Anything before it that refers to the native-mode values (io-0x388 and so 
> on)? I'd guess this message is telling you that the sb driver cannot find 
> anything to connect to.

Not really. These lines (they repeat 6 or 7 times) come at the end of 
dmesg, right after information about my video card. They are still there, 
even though sound is working somewhat more coherently than it was formerly 
(when all I could hear was a snippet of music punctuated by clicks and 
moments of silence)

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
