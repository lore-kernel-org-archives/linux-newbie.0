From: Ray Olszewski <ray@comarre.com>
Subject: Re: fixing sound
Date: Sun, 25 Apr 2004 08:36:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040425082135.02d33358@celine>
References: <Pine.LNX.4.44.0404242325430.2737-100000@legolas.personal.e
 ngin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0404242325430.2737-100000@legolas.personal.e
 ngin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:31 PM 4/24/2004 -0400, Karthik Vishwanath wrote:
>Hello,
>
>I seem unable to get any audio out of my debian installation. The
>relevant lines from lsmod shows me:
>
>emu10k1                60812   0
>ac97_codec             13428   0  [emu10k1]
>sound                  58440   0  [emu10k1]
>soundcore               3972   7  [emu10k1 sound]
>
>And, I am unable to hear audio when I try:
># cat chimes.wav > /dev/dsp
>
>/dev/dsp does exist, though.
>
># uname -a
>Linux gandalf 2.4.25-1-k7 #1 Tue Feb 24 14:24:28 EST 2004 i686 GNU/Linux
>
>What must I try? Also, I am pretty sure that I have'nt detailed enough
>info. here - what other things do I need to list out?


1. Check (and tell us, if need be) what "lspci" reports about the sound 
hardware. It's hard to troubleshoot sound with no hardware information.

2. Check "ls -l /dev/dsp". Make sure it points to the right place. It 
should look something like this:

         crw-rw----    1 root     audio     14,   3 Mar 14  2002 /dev/dsp

3. Related to #1. please tell us what you know (independently of lspci) 
about the sound hardware you are using. Are you certain (if so, how) that 
the emu10k1 module is the right one?

4. Might this be an IRQ issue? Check /proc/interrupts before and after you 
try to play a sound file. Make sure the access count for the audio device 
has incremented. An example from one of my systems (different sound driver):

         5:  134002133          XT-PIC  es1371

5. Has this sound hardware ever worked previously ... for example, with an 
earlier Linux kernel or a different OS?

6. Related to 5 ... are you sure your sound cabling is right and your 
speakers (or headphones) work? A long shot, but I'm trying to cover all 
possibilities you did not address.

7. Basic questions: Debian Woody, Sid, or Sarge? Stock or custom kernel?

8. Throughout my response, I've interpreted "unable to hear audio" as 
meaning that the system fails silently ... that is, the "cat" process runs 
to its conclusion without objection, but no sound actually comes out. (BTW, 
this isn't a very good way to play sound files, but it should make noise 
nonetheless.) If this interpretation is wrong, please correct it with 
appropriate details.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
