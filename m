From: Ray Olszewski <ray@comarre.com>
Subject: Re: CMI-8330 On Board Sound?
Date: Thu, 15 Jul 2004 08:31:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040715081002.01f08ba8@celine>
References: <20040714191958.GA904@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040714191958.GA904@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

Hal -- I waited to reply in the hope that someone would have specific 
advice for you. Since nothing along that line happened (the response about 
using a different driver is, I believe, incorrect), let me see if these few 
thoughts are of any help.

First, it appears from what you wrote -- specifically, that the system will 
play a WAV file -- that the card and its Linux module are working together. 
You've got the right module for 2.4.x kernels. Look in the kernel 
documentation ... probably /usr/src/linux/Documentation/sound/CMI8330 ... 
to confirm this.

Second, if I read you right, the CD drive is putting out the needed signal 
on the direct analog connection to the mobo. I think you said that you 
actually (somehow) connected headphones to the mobo end of that cable and 
heard a signal (if I've misunderstood this part, then it is a loose end 
that you should be considering).

Third, what exactly do you mean by "and the CD did spin" when you discuss 
use of workbone? The CD *always* "spins" -- that's in the drive's firmware. 
So did you mean something more specific? Can you access the CD using one of 
the non-sound tools related to workbone (for example, cdown)? Is it 
possible that your system is not using the mount point (probably 
/dev/cdrom, as a symlink) that workbone expects? (Maybe you're using devfs, 
for example?) Were your tests of the analog cable to the mobo done using 
workbone to play the CD?

Fourth, just a detail -- amixer and alsamixer work with the ALSA sound 
modules. You are using the OSS sound modules (or at least it seems that way 
from what you wrote). rexima is the usual mixer to use with these modules. 
I suppose you could look into using ALSA with this sound subsystem ... I've 
had sound systems that needed ALSA to work properly (in my cases, to record 
from line-in).

Assuming the "right" answers to these questions, my own inclination at this 
point would be to suspect a hardware problem. Maybe a chipset problem. 
Maybe a mobo problem (a bad header, or possibly a mislabeled one ... are 
you certain that you are connecting the analog cable in the right place?). 
Maybe a BIOS problem (OK, that's not really hardware, but you get my drift).

Sorry I can't offer more specific help.

At 03:19 PM 7/14/2004 -0400, Hal MacArgle wrote:
>Greetings: Am in trouble with an on board CMI-8330 SoundPro feature
>on a 430TX MB - (ISA/PCI). Slack9.1, bare.i install, kernel 2.4.22..
>
>No module by that designation so hit the Web coming up with AD1848;
>modprobe ad1848 installs but doesn't work and the mixer rexima
>doesn't like... Apparently AD1848 OK for an older SoundPro chip?
>
>Tried modprobe sb, and all seemed well.. Workbone started the drive
>and the rexima mixer report 75% master and 75% CD - and the CD did
>spin.. No sound from the sound card line out jack but a hdset to the
>drive OK, as well as the MB end of the audio cable.. Normal analog
>sound going into the header input jack..
>
>cat /proc/ioports - /interrupts - dma, all reported as expected:
>0x220, irq10, dma 1,5. "soundblaster".. (The usually normal IRQ5,
>grabbed by PCI during boot.) I wonder??
>
>lsmod reported sb, sb-lib, uart401, sound, soundcore and isa-pnp used
>by [sb].. All seemingly normal from my limited experience..
>
>Suspected the "SoundPro HT1869V+ chip," so tried play filename.wav
>and it was perfect with the amplified speakers connected to
>"line out." Could the chip be broke in one area only?? Maybe the AD
>"section?"
>
>Slack 9.1 installs alsamixer and amixer that has been a problem in
>the past because default is zero gain.. Rexima shows 75% unless the
>card is muted and rexima doesn't show that?? For some reason
>alsamixer or amixer doesn't run on this installation. Could that be a
>clue?? The actual chip is marked as above with "pci" on the next
>row.. Thats odd because /var/adm/messages reports that isapnp found
>the card.. Strange?? dmesg or /var/adm/syslog doesn't mention it at
>all and messages only after invoking modprobe sb...


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
