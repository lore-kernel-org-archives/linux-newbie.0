From: James Miller <jamtat@mailsnare.net>
Subject: sound problems on Debian unstable
Date: Wed, 6 Apr 2005 10:10:48 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504060933430.5951@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'm having some perplexing sound problems on my Debian unstable system and 
would like to ask for help, clarifications and sympathy :)

The system is a Dell Optiplex GX1 that's been somewhat modified (BIOS 
update, Powerleap processor, maxed out for RAM, extra hard drives, new 
power supply). It's one of those institutional models with a daughterboard 
that has some pci and isa slots in it. It has a "PnP BIOS" according to 
dmesg output.

It has onboard sound--Crystal Semiconductor--that I've had working fine 
under other Linux installs to this machine. But in this case, I wanted to 
add a sound card, since I'll be using unpowered speakers and need the 
computer to output more amplified sound.

I put in an ISA card--a Logitech Soundman 16. It is an older, though never 
used, card. I tried isapnptools to get the thing recognized, but pnpdump 
reports "no boards found." Searching the internet I finally found the 
right module to load for the card--pas2. After loading that module with 
necessary io/irq/dma specifications, I was able to play a CD. A tape deck 
and radio, played through the audio-in port on the card, worked fine as 
well. Nice sound. However, my sound apps, like Rhythmbox (I'm using the 
Gnome desktop on this machine), will not really play. What I mean by "not 
really play" is that I get some really choppy sound: split-second snippets 
of the actual music interspersed with some clicking noises and punctuated 
by silence. dmesg output shows some errors after trying Rhythmbox, as 
follows: "Sound: DMA (output) timed out - IRQ/DRQ config error?" Kind of 
wierd.

cat /proc/interrupts shows the right interrupt assigned to the module (I 
was using IRQ 7 but dmesg indicated that the parallel port was trying to 
use 7 so I switched the sound card to IRQ 5 using the DOS utility that 
came with the card). cat /proc/ioports does not show the assigned io 
(230--it was 220 but I assigned a different one last night using the DOS 
software that came with the card in hopes this might resolve the problem) 
associated with the module. This holds for both the 220 setting I used 
earlier as well as the current 230 setting. I can include the full ouput 
from those commands in a future post if that would be helpful in 
diagnosing.

I wondered if the PnP BIOS Linux identifies might not be the problem, and 
whether it might be blocking Linux and isapnptools from dealing with the 
card as specified or detecting it. But this doesn't seem to make sense 
since I am able to run the test software under DOS provided with the card 
with no problems. I boot from a DOS diskette that sets up a ramdisk, and I 
install the soundman testing utilities in the ramdisk. I can hear all the 
sounds fine, fiddle with IRQ's, IO's and DMA's, run the diagnostic which 
tells me everything is ok. So it's a bit mystifying why Linux can't seem 
to deal with the thing.

Maybe it's a sound server issue rather than a hardware issue? I don't 
understand very well the various sound server schemes Linux uses, but can 
try and answer some pointed questions or run some commands relevant to 
this line of inquiry.

Another confusing thing about the card itself is its available settings. 
It has 2 possible sets of IRQ's, for example: a "soundman" IRQ and a 
"soundblaster" IRQ. Same for DMA setting. But it has *only* a soundblaster 
IO. It is said in the manual to be "soundblaster (and adlib) compatible," 
whatever that means.

Input on this problem will be appreciated. Can I make my sound apps play 
through this thing, or should I give up and try to find a different card?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
