From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Wed, 06 Apr 2005 09:53:50 -0700
Message-ID: <5.1.0.14.1.20050406092225.02059310@celine>
References: <Pine.LNX.4.61.0504060933430.5951@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504060933430.5951@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:10 AM 4/6/2005 -0500, James Miller wrote:
>I'm having some perplexing sound problems on my Debian unstable system and 
>would like to ask for help, clarifications and sympathy :)

I can at least offer the last. Getting sound right ... particularly with 
offbeat hardware ... can be a real pain. I confess that about 1/3 of the 
time, I end up giving in and buying a reasonably standard, well-supported 
sound card, when I run into these messes (usually with on-mobo sound 
hardware causing recording, not playback, problems).

>The system is a Dell Optiplex GX1 that's been somewhat modified (BIOS 
>update, Powerleap processor, maxed out for RAM, extra hard drives, new 
>power supply). It's one of those institutional models with a daughterboard 
>that has some pci and isa slots in it. It has a "PnP BIOS" according to 
>dmesg output.

Ah yes ... I remember these well. But not fondly. Had an old one 
(PentiumPro) and it was nothing but trouble.

>It has onboard sound--Crystal Semiconductor--that I've had working fine 
>under other Linux installs to this machine. But in this case, I wanted to 
>add a sound card, since I'll be using unpowered speakers and need the 
>computer to output more amplified sound.
>
>I put in an ISA card--a Logitech Soundman 16. It is an older, though never 
>used, card. I tried isapnptools to get the thing recognized, but pnpdump 
>reports "no boards found." Searching the internet I finally found the 
>right module to load for the card--pas2.

>  After loading that module with necessary io/irq/dma specifications,

You might want to check that you are using the right parameters (the doc 
file that comes with kernel source offers sort of an example, in the form 
of a LILO append line to use with compiled-in sound, and it indicates the 
need to specify two distinct io ports:

         append="pas2=0x388,10,3,-1,0x220,5,1,-1 sb=0x220,5,1,-1 opl3=0x388"
).

>I was able to play a CD.
>  A tape deck and radio, played through the audio-in port on the card, 
> worked fine as well. Nice sound.

All of this has nothing to do with the Linux sound driver. It just confirms 
that you have working hardware. But you know that from the DOS boots you 
mention below.

>However, my sound apps, like Rhythmbox (I'm using the Gnome desktop on 
>this machine), will not really play. What I mean by "not really play" is 
>that I get some really choppy sound: split-second snippets of the actual 
>music interspersed with some clicking noises and punctuated by silence. 
>dmesg output shows some errors after trying Rhythmbox, as follows: "Sound: 
>DMA (output) timed out - IRQ/DRQ config error?" Kind of wierd.

I'm more curious by what you mean by "like". It is probably not an issue, 
but you might test using a more basic, CLI-oriented app (like mpg123 or 
ogg123, depending on what format your source files are). Also, have you 
used a sound setup app, for example rexima, to check the card/driver 
settings as Linux sees them?

>cat /proc/interrupts shows the right interrupt assigned to the module (I 
>was using IRQ 7 but dmesg indicated that the parallel port was trying to 
>use 7 so I switched the sound card to IRQ 5 using the DOS utility that 
>came with the card).

Is the assignment solo or shared? Did you disable the on-mobo sound in BIOS?

>cat /proc/ioports does not show the assigned io (230--it was 220 but I 
>assigned a different one last night using the DOS software that came with 
>the card in hopes this might resolve the problem) associated with the 
>module. This holds for both the 220 setting I used earlier as well as the 
>current 230 setting. I can include the full ouput from those commands in a 
>future post if that would be helpful in diagnosing.

The ioport should be showing up, as you no doubt realize. Are you 
specifying both  pas_io -AND- mss_io when you insmod (or modprobe) the 
module? (I'm not familiar with this card or driver, so I don't know which 
of them matters to sound playback.)

Could there really be a DMA issue (I've never run into this myself)? What 
does "more /proc/dma" tell you?

>I wondered if the PnP BIOS Linux identifies might not be the problem, and 
>whether it might be blocking Linux and isapnptools from dealing with the 
>card as specified or detecting it. But this doesn't seem to make sense 
>since I am able to run the test software under DOS provided with the card 
>with no problems. I boot from a DOS diskette that sets up a ramdisk, and I 
>install the soundman testing utilities in the ramdisk. I can hear all the 
>sounds fine, fiddle with IRQ's, IO's and DMA's, run the diagnostic which 
>tells me everything is ok. So it's a bit mystifying why Linux can't seem 
>to deal with the thing.

As best as I can tell from what you write, this card does not support PnP 
assignment. If you are running isapnptools, by all means do not do so ... 
let the BIOS handle everything. But I doubt it is relevant.

>Maybe it's a sound server issue rather than a hardware issue? I don't 
>understand very well the various sound server schemes Linux uses, but can 
>try and answer some pointed questions or run some commands relevant to 
>this line of inquiry.
>
>Another confusing thing about the card itself is its available settings. 
>It has 2 possible sets of IRQ's, for example: a "soundman" IRQ and a 
>"soundblaster" IRQ. Same for DMA setting. But it has *only* a soundblaster 
>IO. It is said in the manual to be "soundblaster (and adlib) compatible," 
>whatever that means.
>
>Input on this problem will be appreciated. Can I make my sound apps play 
>through this thing, or should I give up and try to find a different card?

Were it me, I'd give up and buy a more up-to-date card.  But I'm lazy and 
live near Fry's, where this stuff is always cheap. YMMV.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
