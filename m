From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: CMI-8330 On Board Sound?
Date: Thu, 15 Jul 2004 17:28:44 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200407151728.44167.pa3gcu@zeelandnet.nl>
References: <20040714191958.GA904@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040714191958.GA904@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Wednesday 14 July 2004 21:19, Hal MacArgle wrote:
> Greetings: Am in trouble with an on board CMI-8330 SoundPro feature
> on a 430TX MB - (ISA/PCI). Slack9.1, bare.i install, kernel 2.4.22..
>
> No module by that designation so hit the Web coming up with AD1848;
> modprobe ad1848 installs but doesn't work and the mixer rexima
> doesn't like... Apparently AD1848 OK for an older SoundPro chip?

Huum, i wonder, did you read /usr/src/linux/Documentation/sound/CMI8330 ?

It says right at the start.
( Be sure to read Documentation/sound/SoundPro too )


This adapter is now directly supported by the sb driver.

 The only thing you have to do is to compile the kernel sound
support as a module and to enable kernel ISAPnP support,
as shown below.

CONFIG_SOUND=m
CONFIG_SOUND_SB=m
CONFIG_PNP=y
CONFIG_ISAPNP=y
and optionally:
CONFIG_SOUND_MPU401=m
 for MPU401 support.

(I suggest you to use "make menuconfig" or "make xconfig"
 for a more comfortable configuration editing)
Then you can do
 modprobe sb
and everything will be (hopefully) configured.
You should get something similar in syslog:

sb: CMI8330 detected.
sb: CMI8330 sb base located at 0x220
sb: CMI8330 mpu base located at 0x330
sb: CMI8330 mail reports to Alessandro Zummo <azummo@ita.flashnet.it>
sb: ISAPnP reports CMI 8330 SoundPRO at i/o 0x220, irq 7, dma 1,5

> Tried modprobe sb, and all seemed well.. Workbone started the drive
> and the rexima mixer report 75% master and 75% CD - and the CD did
> spin.. No sound from the sound card line out jack but a hdset to the
> drive OK, as well as the MB end of the audio cable.. Normal analog
> sound going into the header input jack..
>
> cat /proc/ioports - /interrupts - dma, all reported as expected:
> 0x220, irq10, dma 1,5. "soundblaster".. (The usually normal IRQ5,
> grabbed by PCI during boot.) I wonder??

You will need to resurve IRQ 10 in your bios just incase some other peice of 
hardware grabs it before the sound module is loaded.
(Or i would imagen that would be nessacary.

> lsmod reported sb, sb-lib, uart401, sound, soundcore and isa-pnp used
> by [sb].. All seemingly normal from my limited experience..
>
> Suspected the "SoundPro HT1869V+ chip," so tried play filename.wav
> and it was perfect with the amplified speakers connected to
> "line out." Could the chip be broke in one area only?? Maybe the AD
> "section?"

Half broken,!, That i doubt.

> Slack 9.1 installs alsamixer and amixer that has been a problem in
> the past because default is zero gain.. Rexima shows 75% unless the
> card is muted and rexima doesn't show that?? For some reason
> alsamixer or amixer doesn't run on this installation. Could that be a
> clue?? The actual chip is marked as above with "pci" on the next
> row.. Thats odd because /var/adm/messages reports that isapnp found
> the card.. Strange?? dmesg or /var/adm/syslog doesn't mention it at
> all and messages only after invoking modprobe sb...

kmix if you run X will help i think.

>
> Any suggestions most welcome and TIA..
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 9.1   (2.4.22)

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
