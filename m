From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: CMI-8330 On Board Sound?
Date: Thu, 15 Jul 2004 14:46:01 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040715184601.GA547@lnx2.w8mch.ampr.org>
References: <20040714191958.GA904@lnx2.w8mch.ampr.org> <200407151728.44167.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200407151728.44167.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

Thanks Richard for your input /and/ Ray and Andrew.. Annotations
follow:

On 07-15, pa3gcu wrote:
> On Wednesday 14 July 2004 21:19, Hal MacArgle wrote:
> > Greetings: Am in trouble with an on board CMI-8330 SoundPro feature
> > on a 430TX MB - (ISA/PCI). Slack9.1, bare.i install, kernel 2.4.22..
> >
> > No module by that designation so hit the Web coming up with AD1848;
> > modprobe ad1848 installs but doesn't work and the mixer rexima
> > doesn't like... Apparently AD1848 OK for an older SoundPro chip?
> 
> Huum, i wonder, did you read /usr/src/linux/Documentation/sound/CMI8330 ?
> 
> It says right at the start.
> ( Be sure to read Documentation/sound/SoundPro too )

	Yes I printed and read both several times which confused me
more because I think the author was talking about a different
'vintage' of CMI-8330.. I was, of course, hoping to not have to
re-compile the kernel but I will try that if all else fails.. I felt,
since there are so many MB's out there with that on board scheme,
there must be a set of modules somewhere... Maybe not... I still
can't understand why isapnp finds the chip yet the chip is marked
"pci."



> This adapter is now directly supported by the sb driver.

	Yes it is and all looks well except when trying to play a
simple audio CD...

	<snipped - repeat of the Doco>


> 
>  The only thing you have to do is to compile the kernel sound
> support as a module and to enable kernel ISAPnP support,
> as shown below.

	Slack9.1 defaults on installation with isapnp tools..

> sb: CMI8330 detected.
> sb: CMI8330 sb base located at 0x220
> sb: CMI8330 mpu base located at 0x330
> sb: CMI8330 mail reports to Alessandro Zummo <azummo@ita.flashnet.it>
> sb: ISAPnP reports CMI 8330 SoundPRO at i/o 0x220, irq 7, dma 1,5

	This I get with my modprobe sb entry, except for the irq..



> > cat /proc/ioports - /interrupts - dma, all reported as expected:
> > 0x220, irq10, dma 1,5. "soundblaster".. (The usually normal IRQ5,
> > grabbed by PCI during boot.) I wonder??
> 
> You will need to resurve IRQ 10 in your bios just incase some other peice of 
> hardware grabs it before the sound module is loaded.
> (Or i would imagen that would be nessacary.

	I think, but not sure, I tried setting irq 10 to legacy but I
will double check.. Could it be so simple? I do know there are no
other devices using irq 10.. I'm confused with this too because where
does irq 10 come from except, what, isapnp?? I don't see irq 10
anywhere until I run modprobe sb... I do know the BIOS grabs irq 5
right off the bat way before Linux is run, for the NIC _and_ a pci
serial card that's needed because the onboard serial ports are dead..
Maybe I should shuffle some of this stuff around and get the sound
working FIRST?? The NIC is PCI, and IRQ 5 is shared by both serial
ports plus the NIC, and they all coexist and work this way... That
floored me..



> > Suspected the "SoundPro HT1869V+ chip," so tried play filename.wav
> > and it was perfect with the amplified speakers connected to
> > "line out." Could the chip be broke in one area only?? Maybe the AD
> > "section?"
> 
> Half broken,!, That i doubt.

	Me too, but I've been around long enough to believe anything
can happen with these bloody things.. <grin>



> kmix if you run X will help i think.

	The subject machine sans X because don't need and fairly
small HD.. I thought that maybe I should be installing Slack 9.0 or,
maybe, 7.1 instead due to it's age..

	APPRECIATE!!

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
