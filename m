From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Wed, 06 Apr 2005 13:32:06 -0700
Message-ID: <5.1.0.14.1.20050406120016.0201f1f8@celine>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <Pine.LNX.4.61.0504061257310.5863@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504061257310.5863@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:38 PM 4/6/2005 -0500, James Miller wrote:
[...]
>>You might want to check that you are using the right parameters (the doc 
>>file that comes with kernel source offers sort of an example, in the form 
>>of a LILO append line to use with compiled-in sound, and it indicates the 
>>need to specify two distinct io ports:
>>
>>        append="pas2=0x388,10,3,-1,0x220,5,1,-1 sb=0x220,5,1,-1 opl3=0x388"
>
>I got the kernel source and took a look at that file. I'm not sure how to 
>translate this, though. I'm not using lilo, but Grub. Would Grub take such 
>parameters and in the exact same form? I've found Grub documentation in 
>the past to be pretty worthless for clarifying these sorts of things. I'll 
>see if I can find anything new.
>
>Meantime, I had been specifying io/irq/dma in /etc/modules. Doing my own 
>sort of freeform adaptation of the information from the kernel 
>documentation I entered the following lines in /etc/modules:
>
>pas2 io=0x388 irq=3 dma=5
>sb io=0x230 irq=5 dma=1

You are pretty much doing what I meant to be suggesting. You do need to 
adapt this stuf to /etc/modules, not to grub.

Note though that the LILO parameters associate ioport 0x220 (and the 
related dma and int settings) with both pas2 and sb. I'm not sure what to 
make of that either ... but my best *guess* from reading the doc file is 
that you are not enabling SB emulation (and you probably want to) ... look 
at the example for *not* enabling SB in the doc and you'll probably see 
what I mean.

What to do about it? You probably need to include a second set of arguments 
on the pas2 line, probably labeled sb_io and so forth ... to judge from 
this short excerpt from the driver source(./drivers/sound/pas2_card.c):

         cfg.io_base = io;
                 cfg.irq = irq;
                 cfg.dma = dma;
                 cfg.dma2 = dma16;

                 cfg2.io_base = sb_io;
                 cfg2.irq = sb_irq;
                 cfg2.dma = sb_dma;
                 cfg2.dma2 = sb_dma16;

(When the docs are badly written ... and the ones for this driver certainly 
are, if only because they do not include a list of legal module arguments 
... there's no substitute for reading the source.)

Also note (this part *is* in the docs) that SB emulation with this card 
uses dsp1 and audio1, while native-mode is dsp0 and audio0 ... you may want 
to change which sound device are outputting to, since I'd bet the SB 
emulation is better behaved than native mode.

Finally, it is unclear to me whether this extended argument list replaces 
or combines with the "sb" line you have. I'd try it both ways and see what 
works.

But please remember, James, this is all an no more than an extended guess 
... something that might guide you experimenting a bit if you want to spend 
the time on it. Nothing more.


>With these parameters I got the sorta kinda working sound situation I 
>described above. io=0x388 I took from the docs; nothing in my DOS setup 
>program indicates this as any kind of valid io for the card. The only io 
>the card documentation (as opposed to kernel documentation) allows for the 
>card is called "soundblaster port." It is set to 0x230. Likewise I've set 
>"soundblaster irq" to 5 using the DOS utility and "soundblaster dma" to 1 
>using the same. Hence the settings for the sb module above. I was 
>previously *not* loading the sb module, but only tried it this last time. 
>lsmod shows the sb_lib module loaded, but not the sb module.
>
>The settings I've entered for the pas2 module are the so-called "soundman" 
>settings. I selected a "soundman irq" of 3 using the DOS utility and a 
>"soundman dma" of 5. This gets it sorta kinda working. But I do still get 
>the "Sound: DMA (output) timed out - IRQ/DRQ config error" lines at the 
>end of dmesg output

Is there any better context fo this message than what you've provided? 
Anything before it that refers to the native-mode values (io-0x388 and so 
on)? I'd guess this message is telling you that the sb driver cannot find 
anything to connect to.

>>I'm more curious by what you mean by "like". It is probably not an issue, 
>>but you might test using a more basic, CLI-oriented app (like mpg123 or 
>>ogg123, depending on what format your source files are). Also, have you 
>>used a sound setup app, for example rexima, to check the card/driver 
>>settings as Linux sees them?
>
>I tried mp3blaster, as indicated above. Should this suffice? I apt-get'd 
>rexima. The various controls show up when I start it and volume and other 
>levels look ok. Is this what you were after?

Yes to all your questions here.

>>Is the assignment solo or shared? Did you disable the on-mobo sound in BIOS?
>
>The assignment is solo according to cat /proc/interrupts. I *did* disable 
>onboard sound in the BIOS, yes.
>
>>The ioport should be showing up, as you no doubt realize. Are you 
>>specifying both  pas_io -AND- mss_io when you insmod (or modprobe) the 
>>module? (I'm not familiar with this card or driver, so I don't know which 
>>of them matters to sound playback.)
>
>No. I specified io as above--io=XXX after the name of the module I load in 
>/etc/modules. I have no idea what mss is. I have not run across pas_io or 
>mss_io. Are you saying that I should put a line like pas_io=0x388 in my 
>/etc/modules file? And maybe a mss_io=??? there too? pas_io seems fairly 
>clear: it looks like the same acronym after which the module I load is 
>named. mss I'll have to look into some more. I wish I knew where to look 
>for this information. So far I've found bits and pieces scattered across 
>the internet: it doesn't add up to anything like a comprehensive 
>picture--much less a coherent solution.

Sorry; this was just carelessness on my part. I mistakenly looked at the 
docs for the PSS module first, and when I caught my error, I missed fixing 
this part.

[rest deleted]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
