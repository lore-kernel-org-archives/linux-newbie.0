From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Wed, 06 Apr 2005 16:18:03 -0700
Message-ID: <5.1.0.14.1.20050406160353.02035e98@celine>
References: <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine> <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
References: <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:13 PM 4/6/2005 -0500, James Miller wrote:
[...]
>With sb_irq=XXX (and so forth) in the same line as pas2, I do not get 
>these sorts of error messages. Just a clean:
>Pro Audio Spectrum driver Copyright (C) by Hannu Savolainen 1993-1996
>
>But sound still works very poorly. Very scratchy when I play mp3's/ogg's 
>with pauses when I open an application, switch terminals or some other 
>computer activity takes place.

One thing you don't mention trying is using a different audio device. I 
suggest you try directing output to /dev/audio1 or /dev/dsp1 and see if 
that improves the result. I don't know how to do that with mp3blaster; with 
mpg123 you would do

         mpg123 -a /dev/dsp1 nameoffile.mp3

With ogg123, you'd do:

         ogg123 -d oss -o dsp:/dev/dsp1 nameoffile.ogg

BTW, the other poster who suggested a problem with your use of IRQ3 may be 
right. If so, the use of dsp1 may fix that too, since you have SB emulation 
associated with IRQ5.

[...]
>A trip over to Frys (or the local equivalent) is getting more tempting all 
>the time. Any recommendations for reasonably-priced, Linux-compatible 
>cards? I'm no kind of audiophile: heck, if I were, I wouldn't be using a 
>computer to listen to sound. Just something serviceable. I'm happy with 
>the "sound quality" (I being a former audiophile I use that phrase 
>loosely) I get out of a Soundblaster awe 64 on my other machine.

It's been almost 2 years since I set up a Linux system using new hardware, 
but back then, I tried to get SoundBlaster16 cards (usually around $25 back 
then). They use the OSS es1371 driver (usually compiled in stock kernels, I 
think) and work pretty well for both recording and playback. I've also used 
a Yamaha card and been happy with it.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
