From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: fixing sound
Date: Sun, 25 Apr 2004 17:20:08 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0404251658070.11721-100000@legolas.personal.engin.umich.edu>
References: <5.1.0.14.1.20040425082135.02d33358@celine>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040425082135.02d33358@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sun, 25 Apr 2004, at 8:36am, Ray Olszewski wrote:

> 1. Check (and tell us, if need be) what "lspci" reports about the sound 
> hardware. It's hard to troubleshoot sound with no hardware information.

Heres the "relevant" info. from lspci - 
0000:00:09.0 Multimedia audio controller: Creative Labs SB Live! EMU10k1 
(rev 04)
0000:00:09.1 Input device controller: Creative Labs SB Live! MIDI/Game 
Port (rev 01)

> 2. Check "ls -l /dev/dsp". Make sure it points to the right place. It 
> should look something like this:
> 
>          crw-rw----    1 root     audio     14,   3 Mar 14  2002 /dev/dsp

# ls -lF /dev/dsp
crw-rw----    1 root     audio     14,   3 Mar 14  2002 /dev/dsp

> 3. Related to #1. please tell us what you know (independently of lspci) 
> about the sound hardware you are using. Are you certain (if so, how) that 
> the emu10k1 module is the right one?
> [snip]
>
> 5. Has this sound hardware ever worked previously ... for example, with an 
> earlier Linux kernel or a different OS?
>
> 6. Related to 5 ... are you sure your sound cabling is right and your 
> speakers (or headphones) work? A long shot, but I'm trying to cover all 
> possibilities you did not address.
> 

I am certain that emu10k1 is the right driver (for SBLive) - my previous
installation of redhat used this driver and it worked fine. I think the
basic cabling and connection to speakers are fine as well, since the
soundcard works alright under windoze.

> 4. Might this be an IRQ issue? Check /proc/interrupts before and after you 
> try to play a sound file. Make sure the access count for the audio device 
> has incremented. An example from one of my systems (different sound driver):
> 
>          5:  134002133          XT-PIC  es1371

Yes, the access count did increment. 

> 7. Basic questions: Debian Woody, Sid, or Sarge? Stock or custom kernel?
> 

Debian sarge installation, stock kernel. 

> 8. Throughout my response, I've interpreted "unable to hear audio" as 
> meaning that the system fails silently ... that is, the "cat" process runs 
> to its conclusion without objection, but no sound actually comes out. (BTW, 
> this isn't a very good way to play sound files, but it should make noise 
> nonetheless.) If this interpretation is wrong, please correct it with 
> appropriate details.
> 

I am sorry, I should've specified -- its not as if there is silence, I 
hear some weird buzzing noises on the cat command. 

Other things are that trying to play mp3 files via xmms gives a dialog box 
asking me to check:
That the soundcard is configured alright
The correct output plugin is selected
No other program is accessing the soundcard

I started with the first suggestion -- the output plugin selected is the 
OSS driver, and I don't think there are any other applications trying to 
access the soundcard. 


Thanks,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
