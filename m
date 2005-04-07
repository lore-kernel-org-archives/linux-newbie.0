From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Wed, 6 Apr 2005 22:57:38 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504062239040.5570@localhost.localdomain>
References: <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine> <5.1.0.14.1.20050406160353.02035e98@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050406160353.02035e98@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 6 Apr 2005, Ray Olszewski wrote:

> One thing you don't mention trying is using a different audio device. I 
> suggest you try directing output to /dev/audio1 or /dev/dsp1 and see if that 
> improves the result. I don't know how to do that with mp3blaster; with mpg123 
> you would do
>
>        mpg123 -a /dev/dsp1 nameoffile.mp3
>
> With ogg123, you'd do:
>
>        ogg123 -d oss -o dsp:/dev/dsp1 nameoffile.ogg

I get the following when trying this:

me@mymachine:~/MyMusic$ sudo mpg123 -a /dev/audio1 03\ -\ Norman\ Blake\ \ 
\ You\ Are\ My\ Sunshine.ogg
High Performance MPEG 1.0/2.0/2.5 Audio Player for Layer 1, 2, and 3.
Version 0.59q (2002/03/23). Written and copyrights by Joe Drew.
Uses code from various people. See 'README' for more!
THIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!

Playing MPEG stream from 03 - Norman Blake   You Are My Sunshine.ogg ...
MPEG 1.0 layer I, 34381 kbit/s, 32000 Hz mono
Can't open libao driver with device /dev/audio1 (is device in use?)
me@mymachine:~/MyMusic$ sudo mpg123 -a /dev/dsp1 03\ -\ Norman\ Blake\ \ \ 
You\ Are\ My\ Sunshine.ogg
High Performance MPEG 1.0/2.0/2.5 Audio Player for Layer 1, 2, and 3.
Version 0.59q (2002/03/23). Written and copyrights by Joe Drew.
Uses code from various people. See 'README' for more!
THIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!

Playing MPEG stream from 03 - Norman Blake   You Are My Sunshine.ogg ...
MPEG 1.0 layer I, 34381 kbit/s, 32000 Hz mono
Can't open libao driver with device /dev/dsp1 (is device in use?)
me@mymachine:~/MyMusic$

or:

me@mymachine:~/MyMusic$ sudo ogg123 -d oss -o dsp:/dev/audio1 03\ -\ 
Norman\ Blake\ \ \ You\ Are\ My\ Sunshine.ogg

Audio Device:   OSS audio driver output

Playing: 03 - Norman Blake   You Are My Sunshine.ogg
Ogg Vorbis stream: 2 channel, 44100 Hz
Title: Norman Blake / You Are My Sunshine
Artist: Various
Track number: 3
Tracktotal: 19
Album: O Brother, Where Art Thou?
Comment: Ripped with Sound Juicer
Error: Cannot open device oss.

me@mymachine:~/MyMusic$

Same error messages whether I try /dev/dsp1 or /dev/audio1, though my 
examples here show only output from trying /dev/audio1.

> It's been almost 2 years since I set up a Linux system using new hardware, 
> but back then, I tried to get SoundBlaster16 cards (usually around $25 back 
> then). They use the OSS es1371 driver (usually compiled in stock kernels, I 
> think) and work pretty well for both recording and playback. I've also used a 
> Yamaha card and been happy with it.

Thanks for the feedback on that. I'll probably go that route before too 
much longer.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
