From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: fixing sound
Date: Sat, 24 Apr 2004 23:31:58 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0404242325430.2737-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I seem unable to get any audio out of my debian installation. The 
relevant lines from lsmod shows me:

emu10k1                60812   0
ac97_codec             13428   0  [emu10k1]
sound                  58440   0  [emu10k1]
soundcore               3972   7  [emu10k1 sound]

And, I am unable to hear audio when I try:
# cat chimes.wav > /dev/dsp

/dev/dsp does exist, though. 

# uname -a 
Linux gandalf 2.4.25-1-k7 #1 Tue Feb 24 14:24:28 EST 2004 i686 GNU/Linux

What must I try? Also, I am pretty sure that I have'nt detailed enough 
info. here - what other things do I need to list out? 

Thanks,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
