From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: CMI-8330 On Board Sound?
Date: Thu, 15 Jul 2004 15:28:05 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040715192805.GB547@lnx2.w8mch.ampr.org>
References: <20040714191958.GA904@lnx2.w8mch.ampr.org> <5.1.0.14.1.20040715081002.01f08ba8@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20040715081002.01f08ba8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray and have already answered Richard and Andrew... Will
annotate:

On 07-15, Ray Olszewski wrote:
> Hal -- I waited to reply in the hope that someone would have specific 
> advice for you. Since nothing along that line happened (the response about 
> using a different driver is, I believe, incorrect), let me see if these few 
> thoughts are of any help.
> 
> First, it appears from what you wrote -- specifically, that the system will 
> play a WAV file -- that the card and its Linux module are working together. 
> You've got the right module for 2.4.x kernels. Look in the kernel 
> documentation ... probably /usr/src/linux/Documentation/sound/CMI8330 ... 
> to confirm this.

	The Doco says to use AD1848.o /or/ recompile the kernel with
sound blaster support.. ad1848 installs, without "errors" but
/proc/interrupts /ioports /dma doesn't show a thing, and rexima balks
like nothing has happened to the kernel... Clearly, it seems, wrong..
I can recompile the kernel, of course, but I suspect it wont help at
this point.. But, I've sure been wrong before....



> Second, if I read you right, the CD drive is putting out the needed signal 
> on the direct analog connection to the mobo. I think you said that you 
> actually (somehow) connected headphones to the mobo end of that cable and 
> heard a signal (if I've misunderstood this part, then it is a loose end 
> that you should be considering).

	With the CD running, ala workbone, plugging either a hdphone
or amplified speakers into the hdphone jack - perfect.. At the usual
MB end of the standard audio cord from the CD device - I have "test"
"pins" plugged into the header plug with clip leads to the same
amplified speakers - perfect... Moving the mini stereo plug to the
line out on the sound jack - dead silence.. Thought - header plug
from MB to line out jack cable bad?? No, because playing a .wav track
perfect.. This MB has both rectangular 4 pin, in line, audio pins as
well as the different "sound blaster" type.. Either type cable tried
same problem... The rectangular types are L and R on the outside pins
and both centre pins ground.. Most cables today only use 3 conductors
as the ground is common... Measured the cable with a VOM but tried a
different cable anyway - same...



> Third, what exactly do you mean by "and the CD did spin" when you discuss 
> use of workbone? The CD *always* "spins" -- that's in the drive's firmware. 
> So did you mean something more specific? Can you access the CD using one of 
> the non-sound tools related to workbone (for example, cdown)? Is it 
> possible that your system is not using the mount point (probably 
> /dev/cdrom, as a symlink) that workbone expects? (Maybe you're using devfs, 
> for example?) Were your tests of the analog cable to the mobo done using 
> workbone to play the CD?

	Yes I use workbone exclusively to play the CD and it reports
it so.. "Spin" poor choice of words - meant the disk was really
running and making noise, physically, as well as workbones report
"playing - track# and time." Of course the hdphones into the hdphone
jack confirmed this too... Beautiful music.. <grin> BTW, used the
same CDRom to boot and install Slack9.1 as well as run Slack9.1's 2nd
CD, which has isolinux on it... Everything completely "normal" except
for playing an audio CD?? Ugh.. /dev/cdrom symlinked to /dev/hdc -
secondary master... Have never used "cdown."



> Fourth, just a detail -- amixer and alsamixer work with the ALSA sound 
> modules. You are using the OSS sound modules (or at least it seems that way 
> from what you wrote). rexima is the usual mixer to use with these modules. 
> I suppose you could look into using ALSA with this sound subsystem ... I've 
> had sound systems that needed ALSA to work properly (in my cases, to record 
> from line-in).

	I've read some about that and Alsa a new game to me so far,
except I do have it working on another machine, also running
Slack9.1.. In that case was bothered, at first, with no sound when I
discovered that Alsamixer defaults to zero gain and muted.. Simple
fix, once found... Why Slack9.1 should be different with the subject
MB and not with the other MB/machine, escapes me so far... I wasn't
out to re-invent the wheel - just get the machine to play an audio CD
- nothing fancy... <grin> Hmmmmmmm. Could it be that I need more
modules than modprobe sb installs?? This I have to check into... I'm
a little confused by ALSA and OSS - not the definitions and authors,
etc - but digging deeper... Maybe "helper" modules here or there??
None of my books are new enough to explain the above... I can't seem
to find any details of how a sound card actually works and since this
is on board - hard to trace.. Does the analog input header to the
chip normally connect directly to the line out jack? I doubt it. So
that means the chip does an AD thence, DA conversion within itself?
I guess anything could turn this off/on... The CDRom drive I have
doesn't have a digital out jack, just analog, but I note the MB has
digital input header pins, as well as the double analog pins.. How do
I manage to get into such predicaments?? I hate to think it necessary
to get the engineering specs for the chip in order to, merely, play a
CD.. <grin>


> Assuming the "right" answers to these questions, my own inclination at this 
> point would be to suspect a hardware problem. Maybe a chipset problem. 
> Maybe a mobo problem (a bad header, or possibly a mislabeled one ... are 
> you certain that you are connecting the analog cable in the right place?). 
> Maybe a BIOS problem (OK, that's not really hardware, but you get my drift).

	Richard seems to think, as I, that the chip set should be OK
and not partially broken.. At this point I am beginning to suspect
there is something slightly different between the chip on my MB and
the others before or after it.. The MB header is clearly marked, both
normal and sb type as well as the printed manual.. I looked carefully
to see if there may be a jumper I didn't know about that muted sound,
whatever.. Nothing so far and every jumper on the board accounted for
both silk screened and in the manual.. Could be Intel changed
something along the line but I sure don't want to fetch all the
changes they've made to this board thru the years.. Ugh... I couldn't
possibly live that long...  And re the BIOS it has two selections:
Disable or enable; set on enable of course...



> Sorry I can't offer more specific help.

	Your help is always very detailed and that's appreciated very
much.. Maybe something will come up - there's always disabling on
board and fitting another sound card with better details.. Not
mission critical, just part of the learning process - mostly.. <g>

> At 03:19 PM 7/14/2004 -0400, Hal MacArgle wrote:
> >Greetings: Am in trouble with an on board CMI-8330 SoundPro feature
> >on a 430TX MB - (ISA/PCI). Slack9.1, bare.i install, kernel 2.4.22..
> >
> >No module by that designation so hit the Web coming up with AD1848;
> >modprobe ad1848 installs but doesn't work and the mixer rexima
> >doesn't like... Apparently AD1848 OK for an older SoundPro chip?
> >
> >Tried modprobe sb, and all seemed well.. Workbone started the drive
> >and the rexima mixer report 75% master and 75% CD - and the CD did
> >spin.. No sound from the sound card line out jack but a hdset to the
> >drive OK, as well as the MB end of the audio cable.. Normal analog
> >sound going into the header input jack..
> >
> >cat /proc/ioports - /interrupts - dma, all reported as expected:
> >0x220, irq10, dma 1,5. "soundblaster".. (The usually normal IRQ5,
> >grabbed by PCI during boot.) I wonder??
> >
> >lsmod reported sb, sb-lib, uart401, sound, soundcore and isa-pnp used
> >by [sb].. All seemingly normal from my limited experience..
> >
> >Suspected the "SoundPro HT1869V+ chip," so tried play filename.wav
> >and it was perfect with the amplified speakers connected to
> >"line out." Could the chip be broke in one area only?? Maybe the AD
> >"section?"
> >
> >Slack 9.1 installs alsamixer and amixer that has been a problem in
> >the past because default is zero gain.. Rexima shows 75% unless the
> >card is muted and rexima doesn't show that?? For some reason
> >alsamixer or amixer doesn't run on this installation. Could that be a
> >clue?? The actual chip is marked as above with "pci" on the next
> >row.. Thats odd because /var/adm/messages reports that isapnp found
> >the card.. Strange?? dmesg or /var/adm/syslog doesn't mention it at
> >all and messages only after invoking modprobe sb...
> 
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
