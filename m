From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: Debian -> sound modules
Date: Mon, 30 Dec 2002 14:16:50 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E104742.5030500@rug.ac.be>
References: <5.1.0.14.1.20021226085851.020b2100@celine> <5.1.0.14.1.20021227083019.02107cd0@celine>
Reply-To: kurt.sys@rug.ac.be
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: linux-newbie@vger.kernel.org

OK, thanks, but apparently, I have to try again... So let's try sound o=
n=20
my laptop. I don't have much information about the hardware, but this i=
s=20
it (and I've added the 'source of the information' between brackets):

SoundBlaster=AE and Windows=AE sound compatible (website Dell)
Sigmatel 9700 audio controller (Laptop users manual)
Integrated Intell Audio (Windows)
82801CA/CAM AC'97 Audio controller (Windows)
PCI bus 0 device 31 function 5  (windows)
IRQ=3D09 (windows)
IO =3D 1C00 1CFF (windows)
IO =3D 1880 18BF (windows)


Now, the output of lspci -v:

-----

00:00.0 Host bridge: Intel Corp. 82845 845 (Brookdale) Chipset Host=20
Bridge (rev 05)
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, fast devsel, latency 0
	Memory at ec000000 (32-bit, prefetchable) [size=3D64M]
	Capabilities: [e4] #09 [c104]
	Capabilities: [a0] AGP version 2.0

00:01.0 PCI bridge: Intel Corp. 82845 845 (Brookdale) Chipset AGP Bridg=
e=20
(rev 05) (prog-if 00 [Normal decode])
	Flags: bus master, 66Mhz, fast devsel, latency 96
	Bus: primary=3D00, secondary=3D01, subordinate=3D01, sec-latency=3D64
	Memory behind bridge: e0000000-e7ffffff
	Prefetchable memory behind bridge: f0000000-f7ffffff

00:1d.0 USB Controller: Intel Corp. 82801CA/CAM USB (Hub #1) (rev 02)=20
(prog-if 00 [UHCI])
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, medium devsel, latency 0, IRQ 10
	I/O ports at 1800 [size=3D32]

00:1d.1 USB Controller: Intel Corp. 82801CA/CAM USB (Hub #2) (rev 02)=20
(prog-if 00 [UHCI])
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, medium devsel, latency 0, IRQ 11
	I/O ports at 1820 [size=3D32]

00:1e.0 PCI bridge: Intel Corp. 82801BAM/CAM PCI Bridge (rev 42)=20
(prog-if 00 [Normal decode])
	Flags: bus master, fast devsel, latency 0
	Bus: primary=3D00, secondary=3D02, subordinate=3D02, sec-latency=3D168
	I/O behind bridge: 00003000-00003fff
	Memory behind bridge: e8000000-e80fffff

00:1f.0 ISA bridge: Intel Corp. 82801CAM ISA Bridge (LPC) (rev 02)
	Flags: bus master, medium devsel, latency 0

00:1f.1 IDE interface: Intel Corp. 82801CAM IDE U100 (rev 02) (prog-if=20
8a [Master SecP PriP])
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, medium devsel, latency 0
	I/O ports at <unassigned> [size=3D8]
	I/O ports at <unassigned> [size=3D4]
	I/O ports at <unassigned> [size=3D8]
	I/O ports at <unassigned> [size=3D4]
	I/O ports at 1840 [size=3D16]
	Memory at 20000000 (32-bit, non-prefetchable) [disabled] [size=3D1K]

00:1f.3 SMBus: Intel Corp. 82801CA/CAM SMBus (rev 02)
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: medium devsel, IRQ 10
	I/O ports at 1860 [size=3D32]

00:1f.5 Multimedia audio controller: Intel Corp. 82801CA/CAM AC'97 Audi=
o=20
(rev 02)
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, medium devsel, latency 0, IRQ 10
	I/O ports at 1c00 [size=3D256]
	I/O ports at 1880 [size=3D64]

00:1f.6 Modem: Intel Corp. 82801CA/CAM AC'97 Modem (rev 02) (prog-if 00=
=20
[Generic])
	Subsystem: Conexant: Unknown device 5421
	Flags: medium devsel, IRQ 10
	I/O ports at 2400 [size=3D256]
	I/O ports at 2000 [size=3D128]

01:00.0 VGA compatible controller: nVidia Corporation NV11 [GeForce2 Go=
]=20
(rev b2) (prog-if 00 [VGA])
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: 66Mhz, medium devsel, IRQ 10
	Memory at e0000000 (32-bit, non-prefetchable) [size=3D16M]
	Memory at f0000000 (32-bit, prefetchable) [size=3D128M]
	Expansion ROM at <unassigned> [disabled] [size=3D64K]
	Capabilities: [60] Power Management version 2
	Capabilities: [44] AGP version 2.0

02:01.0 Ethernet controller: 3Com Corporation 3c905C-TX/TX-M [Tornado]=20
(rev 78)
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, medium devsel, latency 80, IRQ 10
	I/O ports at 3000 [size=3D128]
	Memory at e8000000 (32-bit, non-prefetchable) [size=3D128]
	Expansion ROM at <unassigned> [disabled] [size=3D128K]
	Capabilities: [dc] Power Management version 2

02:04.0 CardBus bridge: O2 Micro, Inc.: Unknown device 6972
	Subsystem: Dell Computer Corporation: Unknown device 00f3
	Flags: bus master, stepping, slow devsel, latency 168, IRQ 10
	Memory at e8001000 (32-bit, non-prefetchable) [size=3D4K]
	Bus: primary=3D02, secondary=3D03, subordinate=3D06, sec-latency=3D176
	I/O window 0: 00000000-00000003
	I/O window 1: 00000000-00000003
	16-bit legacy interface ports at 0001

-----


And my /etc/modules file:

-----

# /etc/modules: kernel modules to load at boot time.
#
# This file should contain the names of kernel modules that are
# to be loaded at boot time, one per line.  Comments begin with
# a "#", and everything on the line after them are ignored.

af_packet
dummy
ntfs
lp
apm
serial_cs
ide-cd
ide-floppy
3c59x
3c589_cs
sg
imm
i810_audio

-----


=46inally, the 'overdrive' sound, it's not 'double speed' (I guess), bu=
t=20
it's a typical 'noise-signal' sound. So:

cat /usr/share/sndconfig/sample.au > /dev/dsp

gives such a noise-signal (overdrive). I really don't know how I can=20
describe it another way... I'm sorry about that. The same is true for=20
/usr/share/sndconfig/sample2.au and some small wav-files (not all of th=
em).


Some additional, less important (I think) comments inline...



tnx,
Kurt.


Ray Olszewski wrote:
[...]

>> OK, here it comes (I ran 'modconf' and tried to install a=20
>> driver/module, such as the '100% soundblaster compatible' one, but=20
>> some others give the same result, and the ones that don't give=20
>> 'installation failed' are actually not alright since I get the messa=
ge=20
>> that 'device /dev/dsp doesn't exist' if I run 'cat=20
>> /somepath/somefile.wav > /dev/dsp'):
>>
>> # /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: init_module: no=20
>> such device
>> # Hint: insmod errors can be cause by incorrect module parameters,=20
>> including invalid IO or IRQ parameters
>> # You may find more information in syslog or the output from dmesg
>> # /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod=20
>> /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o failed
>> # /lib/modules/x.x.xx/kernel/drivers/sound/xxxxx.o: insmod xxxxx.o f=
ailed
>> # Installation failed
>=20
>=20
> I'm not actually familiar with modconf; does it really report its=20
> results substituting "x.x.xx" for the kernel version? And what is mod=
ule=20
> "xxxxx.o"? Is that gobbledygook out of modconf, a module I'm=20
> unacquainted with, or your unwise attempts to edit the output (Genera=
l=20
> Rule #1: NEVER edit error output except for passwords, and make it=20
> unambiguously clear when you do even that).

It's my unwise attempt... I just tried several sound modules, and I=20
didn't think it was necessary to put everytime the same output. So, the=
=20
xxxxx should be replaced by a module, such as VIA82xxx_audio. The x.x.x=
x=20
should be replaced by 2.4.16 for my laptop.
I now installed module i810_audio as the only sound module.


> The "no such device" response on the first line usually means that th=
e=20
> module did not find hardware to initialize. So it suggests that=20
> "xxxxx.o" is not the right module for the sound hardware on whichever=
 of=20
> your systems you are reporting about here.

Yups, I did get that one. So I didn't include these modules.



> As to "/dev/dsp" ... I can't tell from what you sent whether the /dev=
/=20
> entry itself exists or not ("ls -l /dev/dsp*"). I'm not even certain=20
> which of your two systems you get this message from. If it doesn't=20
> exist, you'll need to create it, which you can do manually with "mkno=
d".=20
> There is probably a Debian package that sets up this sound stuff (the=
=20
> needed /dev/* devices, I mean), but if so, I forget its name. If it d=
oes=20
> exist but using it returns that message, that means that /dev/dsp is =
not=20
> pointing to any real, physical device on the system (that is, you don=
't=20
> have a working sound module installed in the kernel).

/dev/dsp exists. That's not the problem here.



>> I'm quite sure my soundblaster is sb 128 PCI and I know the IRQ, IO=20
>> and other parameters (at least for my desktop). On my laptop, I=20
>> already get some sound, but it quite often, it's like it's ging in
>> 'overdrive'.
>=20
> I don't really know what "overdrive" is "like". Do you perhaps mean i=
t=20
> plays at double speed? (General Rule #2: Describe symptoms as exactly=
 as=20
> you possibly can. Metaphorical trouble reports are hard to interpret.=
)=20
> If so, this is indicative of the wrong module ... one that *almost*=20
> works but isn't really right for your sound card.

Yups, I get that one. overdrive here means thus a noise-signal. And for=
=20
now, don't bother the desktop (sb 128 PCI etc). Let's get things to wor=
k=20
on my laptop first, because on my desktop, it's somewhat harder, I=20
think, since I've got other problems there.


>  From what you wrote here, my best *guess* is that you have not yet=20
> found the right module for your sound card. One approach is simply br=
ute=20
> force -- compile all the soundcard modules, then modprobe (NOT insmod=
 or=20
> modconf) them one by one until you find one that works. Then add that=
=20
> one to /etc/modules .

That's what I've been trying to do. At least, I tried to compile the=20
kernel with all soundcard modules. This didn't work; I could only=20
compile the kernel if I removed some of the sound modules (that's the=20
problem I have on my desktop, but that's for tomorrow, 'cause I haven't=
=20
got my desktop here).
Anyway, I don't think that's a problem. The module I have now (in=20
/etc/modules) gives 'some sound'. Only the IRQ setting is different tha=
n=20
the IRQ setting of the soundcard in windows. Could that be the problem?=
=20
And how can I solve it?



> As to your SMB problems ... the additional info you provided suggeste=
d=20
> nothing to me. The (presumed) edits you did even made it hard for me =
to=20
> figure out what it was saying in places. So I'll leave that one for=20
> someone else to take a try at.

Ok, I understand that... So let's take one problem; I'll wait for this=20
samba-thing.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
