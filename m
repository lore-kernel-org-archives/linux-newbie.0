From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Wed, 6 Apr 2005 13:38:49 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504061257310.5863@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050406092225.02059310@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for your response Ray. I've been able to get a little closer to 
normal sound by following your advice. But it's not fully functional yet: 
using mp3blaster I can get pretty much continuous sound playing 
mp3's/ogg's. Pretty much meaning it is continuous and normal (maybe a bit 
of scratchiness here and there) until I open an application, switch VT's 
or someone sends me an instant message (gaim is running). Then, sound 
stops or pauses, continuing where it left off before the other activity 
started. I have pretty much the same results using Rhythmbox, but the 
scratchiness and pausing seems more severe. So, it's not quite working 
right yet. Here's what I did.

On Wed, 6 Apr 2005, Ray Olszewski wrote:

> You might want to check that you are using the right parameters (the doc file 
> that comes with kernel source offers sort of an example, in the form of a 
> LILO append line to use with compiled-in sound, and it indicates the need to 
> specify two distinct io ports:
>
>        append="pas2=0x388,10,3,-1,0x220,5,1,-1 sb=0x220,5,1,-1 opl3=0x388"

I got the kernel source and took a look at that file. I'm not sure how to 
translate this, though. I'm not using lilo, but Grub. Would Grub take such 
parameters and in the exact same form? I've found Grub documentation in 
the past to be pretty worthless for clarifying these sorts of things. I'll 
see if I can find anything new.

Meantime, I had been specifying io/irq/dma in /etc/modules. Doing my own 
sort of freeform adaptation of the information from the kernel 
documentation I entered the following lines in /etc/modules:

pas2 io=0x388 irq=3 dma=5
sb io=0x230 irq=5 dma=1

With these parameters I got the sorta kinda working sound situation I 
described above. io=0x388 I took from the docs; nothing in my DOS setup 
program indicates this as any kind of valid io for the card. The only io 
the card documentation (as opposed to kernel documentation) allows for the 
card is called "soundblaster port." It is set to 0x230. Likewise I've set 
"soundblaster irq" to 5 using the DOS utility and "soundblaster dma" to 1 
using the same. Hence the settings for the sb module above. I was 
previously *not* loading the sb module, but only tried it this last time. 
lsmod shows the sb_lib module loaded, but not the sb module.

The settings I've entered for the pas2 module are the so-called "soundman" 
settings. I selected a "soundman irq" of 3 using the DOS utility and a 
"soundman dma" of 5. This gets it sorta kinda working. But I do still get 
the "Sound: DMA (output) timed out - IRQ/DRQ config error" lines at the 
end of dmesg output


> I'm more curious by what you mean by "like". It is probably not an issue, but 
> you might test using a more basic, CLI-oriented app (like mpg123 or ogg123, 
> depending on what format your source files are). Also, have you used a sound 
> setup app, for example rexima, to check the card/driver settings as Linux 
> sees them?

I tried mp3blaster, as indicated above. Should this suffice? I apt-get'd 
rexima. The various controls show up when I start it and volume and other 
levels look ok. Is this what you were after?

> Is the assignment solo or shared? Did you disable the on-mobo sound in BIOS?

The assignment is solo according to cat /proc/interrupts. I *did* disable 
onboard sound in the BIOS, yes.

> The ioport should be showing up, as you no doubt realize. Are you specifying 
> both  pas_io -AND- mss_io when you insmod (or modprobe) the module? (I'm not 
> familiar with this card or driver, so I don't know which of them matters to 
> sound playback.)

No. I specified io as above--io=XXX after the name of the module I load in 
/etc/modules. I have no idea what mss is. I have not run across pas_io or 
mss_io. Are you saying that I should put a line like pas_io=0x388 in my 
/etc/modules file? And maybe a mss_io=??? there too? pas_io seems fairly 
clear: it looks like the same acronym after which the module I load is 
named. mss I'll have to look into some more. I wish I knew where to look 
for this information. So far I've found bits and pieces scattered across 
the internet: it doesn't add up to anything like a comprehensive 
picture--much less a coherent solution.

> Could there really be a DMA issue (I've never run into this myself)? What 
> does "more /proc/dma" tell you?

me@mymachine:~$ more /proc/dma
  4: cascade
  5: PAS16

> As best as I can tell from what you write, this card does not support PnP 
> assignment. If you are running isapnptools, by all means do not do so ... let 
> the BIOS handle everything. But I doubt it is relevant.

I'll go ahead and uninstall isapnptools. I don't have any other need for 
it on this machine.

> Were it me, I'd give up and buy a more up-to-date card.  But I'm lazy and 
> live near Fry's, where this stuff is always cheap. YMMV.

I'm moving somewhat closer to that option. Had I to lived closer to Fry's, 
the scales might have been already tipped.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
