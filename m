From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Thu, 7 Apr 2005 09:09:00 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504070853500.5694@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro> <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro> <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 6 Apr 2005, James Miller wrote:

> range) or to disable ttyS1 (COM 2 as the BIOS sees it, I believe) and see if 
> that relieves any potential IRQ 3 conflict.

I tried disabling COM 2 in the BIOS (set it to "off" there). When I look 
at dmesg output, it does, indeed, appear to be off and is not getting 
assigned an IRQ by Linux. I see in dmesg output only ttyS0, assigned IRQ 
4. So it seems I have succeeded in freeing up IRQ 3 and resolving any 
potential conflict over it that might be contributing to sound issues. 
Nonetheless, the sound is of the same poor quality when I try to play 
files stored on the hard drive with mp3blaster. It is scratchy and I get 
pauses when some other computer activity occurs, just like before. I 
therefore presume that IRQ conflicts are not the operative problem here.

I see no io address associated with the sound module(s) in cat 
/proc/ioports output, so that could be part of my problem. I also do not 
see IRQ 5 associated with anything (or even listed) in cat 
/proc/interrupts output, though I've tried to associate the pas2 module 
with it by specifying sb_irq=5 (among other parameters) in /etc/modules. I 
don't see the device files Ray mentioned as being used by Soundblaster 
emulation (/dev/dsp1 or /dev/audio1) in the /dev directory, but I think 
those should be auto-created on boot if they are needed.

Further suggestions? A trip to Frys later today, perhaps?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
