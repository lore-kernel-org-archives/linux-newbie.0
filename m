From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Thu, 07 Apr 2005 13:54:18 -0700
Message-ID: <5.1.0.14.1.20050407130808.0206a1a8@celine>
References: <5.1.0.14.1.20050407103855.0202fff0@celine>
 <5.1.0.14.1.20050407090339.03494290@celine>
 <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro>
 <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro>
 <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
 <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050407090339.03494290@celine>
 <5.1.0.14.1.20050407103855.0202fff0@celine> <Pine.LNX.4.61.0504071257180.5694@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504071257180.5694@localhost.localdomain>
References: <5.1.0.14.1.20050407103855.0202fff0@celine>
 <5.1.0.14.1.20050407090339.03494290@celine>
 <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro>
 <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro>
 <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
 <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050407090339.03494290@celine>
 <5.1.0.14.1.20050407103855.0202fff0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:11 PM 4/7/2005 -0500, James Miller wrote:
>I'll start the testing responses to this, your most recent, posting, and 
>move to your previous posting after this one. I wanted to ask about udev 
>before running the tests in your previous post on the assumption that its 
>presence might change something fundamental in testing procedures. The 
>tests I ran where I "got the same responses as before" were preliminary 
>explorations to find out if that might be the case, and were not intended 
>to be the responses you asked for earlier.

Right. I just wanted to save a round later, in case I hadn't been clear on 
this point.

Overall comment: The only real possibility of error I see in what you did 
is misspecification of the SB ioport. If that isn't wrong, I have nothing 
to suggest based on this report ... I'm probably misunderstanding how the 
driver works. Sorry. Go to Fry's, I guess.

>On Thu, 7 Apr 2005, Ray Olszewski wrote:
>
>>At this point, my best suggestion is to follow the step-by-step procedure 
>>I described in my prior message, using /dev/.static/dev/dsp1 (or audio1) 
>>as the target device. Once I see the full report of the test, as I 
>>outlined it in my prior message, I (and others) should be able to 
>>indicate if there is an error of detail in your procedure or if the sound 
>>driver just does not work the way I think it does.
>
>Here is the output when I try the /dev/.static/dev directories using 123ogg:
>
>me@mymachine:~/MyMusic$ sudo ogg123 -d oss -o dsp:/dev/.static/dev/dsp1 
>03\ -\ Norman\ Blake\ \ \ You\ Are\ My\ Sunshine.ogg
>
>Audio Device:   OSS audio driver output
>
>Playing: 03 - Norman Blake   You Are My Sunshine.ogg
>Ogg Vorbis stream: 2 channel, 44100 Hz
>Title: Norman Blake / You Are My Sunshine
>Artist: Various
>Track number: 3
>Tracktotal: 19
>Album: O Brother, Where Art Thou?
>Comment: Ripped with Sound Juicer
>Error: Cannot open device oss.
>
>me@mymachine:~/MyMusic$ sudo ogg123 -d oss -o dsp:/dev/.static/dev/audio1 
>03\ -\ Norman\ Blake\ \ \ You\ Are\ My\ Sunshine.ogg
>
>Audio Device:   OSS audio driver output
>
>Playing: 03 - Norman Blake   You Are My Sunshine.ogg
>Ogg Vorbis stream: 2 channel, 44100 Hz
>Title: Norman Blake / You Are My Sunshine
>Artist: Various
>Track number: 3
>Tracktotal: 19
>Album: O Brother, Where Art Thou?
>Comment: Ripped with Sound Juicer
>Error: Cannot open device oss.

OK. In context, this error means ogg123 cannot open (for example) 
dsp:/dev/.static/dev/audio1 ... either there is no physical device 
associated with the logical device or you don't have permission to open it. 
(I tested this here to be sure.)

>me@mymachine:~/MyMusic$
>
>>PS, -- In addition to what I asked for before, please include the EXACT 
>>output of both "ls -l /dev/dsp*" -AND- "ls -l /dev/.static/dev/dsp*".
>
>me@mymachine:~$ ls -l /dev/dsp*
>crw-rw----  1 root audio 14, 3 2005-04-07 08:44 /dev/dsp
>crw-rw----  1 root audio 14, 5 2005-04-07 08:44 /dev/dspW
>me@mymachine:~$
>
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp*
>ls: /dev/.static/dev/dsp*: No such file or directory
>me@mymachine:~$
>
>On the other hand, when I eliminate the wildcard and use real numbers I get:
>
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp1
>crw-rw----  1 root audio 14, 19 2004-09-18 06:52 /dev/.static/dev/dsp1
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp2
>crw-rw----  1 root audio 14, 35 2004-09-18 06:52 /dev/.static/dev/dsp2
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp3
>crw-rw----  1 root audio 14, 51 2004-09-18 06:52 /dev/.static/dev/dsp3
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp4
>ls: /dev/.static/dev/dsp4: No such file or directory
>me@mymachine:~$ sudo ls -l /dev/.static/dev/dsp
>crw-rw----  1 root audio 14, 3 2004-09-18 06:52 /dev/.static/dev/dsp
>me@mymachine:~$
>
>Your guess is as good as mine as to why wildcards don't work here. 
>Actually, your guess is probably better than mine :)

OK. This part looks OK. dsp1 has the right major and minor numbers. 
Assuming sudo works to give you permission to write to this device ... I 
normally do this by adding the userid I'm using to group audio (in 
/etc/group) ... this is not the source of your problem. If it works to 
access /dev/dsp, it is probably OK here too.

The "ls" problem bothers me a little bit. It probably means ls cannot read 
the directory /dev/.static/dev to expand the wildcard. Just a guess, though.

It's a longshot, but you might try creating the node /dev/dsp1 just as a 
test ("mknod /dev/dsp1 c 14 19"; "chmod 660 /dev/dsp1"; "chgrp audio 
/dev/dsp1" -- then check that it looks like this in ls -l: "crw-rw----  1 
root audio 14, 19 Jun 13  2001 /dev/dsp1") and now see if ogg123 can open 
it. It's a long shot, though.

>>2. Create the device entries if they are not present. (I was a bit 
>>surprised that they are not present, but if they are not, you are wrong 
>>that they "should be auto-created on boot if they are needed" ... well, 
>>maybe not wrong about "should*, but should != are, and in fact they are 
>>not.) Use mknod to create them by hand. (BTW, is /dev/dsp or /dev/dsp0 
>>present? If not, you may be using devfs, and that puts the devices 
>>somewhere different ... I forget where since I don't use it, but maybe 
>>/dev/sound/dsp1 and so on. If /dev/dsp is present, see if it is s symlink 
>>to something other than /dev/dsp0 ... this might help you track down 
>>dsp1.) The relevant values for creating dsp1 are major 14, minor 19 (man 
>>mknod will explain this). Also make sure the userid you are using for 
>>testing has permission to write to this device ... making its permissions 
>>match /dev/dsp will probably suffice.
>
>Skipped since I'm not sure if these nodes need to be created and/or 
>copied, and I'm not sure if you're sure either. Or whether this step may 
>be invalidated by the presence of udev. Corrections welcome.

Probably OK, as I said above.

>>3. Try one of the programs I suggested with the output directed to the 
>>appropriate dsp1 entry (which depends on where you find it, or put it, in 
>>step 2).
>
>The output from trying to use /dev/.static/dev/dsp1 and 
>/dev/.static/dev/audio1 above suffices, I presume?
>
>>If sound still does not work, include in your report:
>>
>>A. The EXACT entry from /etc/modules .
>
>me@mymachine:~$ cat /etc/modules
># /etc/modules: kernel modules to load at boot time.
>#
># This file should contain the names of kernel modules that are
># to be loaded at boot time, one per line.  Comments begin with
># a "#", and everything on the line after them are ignored.
># pas2 io=220 irq=7 dma=1
># sb io=0x230 irq=5 dma=1 mpu_io=0x330
>
>ide-cd
>ide-detect
>sd_mod
>pas2 io=0x388 irq=3 dma=5 sb_io=0x230 sb_irq=5 sb_dma=1
>opl3 io=0x388
>me@mymachine:~$

Is 0x230 the right ioport? I thought you said in an earlier message that 
you'd moved the SB emulation to 0x220 (but I don't have the old messages to 
check). Did you move it back? Or is my memory failing?

I do recall that sb_irq= 5 is right. I don't remember what you did about 
sb_dma.

>>B. ALL dmesg output related to sound.
>
>I'll try, presuming I can identify what's relevant:
>
>me@mymachine:~$ dmesg |more
><snip>
>isapnp: Scanning for PnP cards...
>isapnp: No Plug & Play device found
>serio: i8042 AUX port at 0x60,0x64 irq 12
>serio: i8042 KBD port at 0x60,0x64 irq 1
>Serial: 8250/16550 driver $Revision: 1.90 $ 48 ports, IRQ sharing enabled
>ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
>ttyS0 at I/O 0x3f8 (irq = 4) is a 16550A
>io scheduler noop registered
>io scheduler anticipatory registered
>io scheduler deadline registered
>io scheduler cfq registered
>RAMDISK driver initialized: 16 RAM disks of 8192K size 1024 blocksize
><snip>
>hdd: ATAPI 40X CD-ROM CD-R/RW drive, 8192kB Cache, UDMA(33)
>Uniform CD-ROM driver Revision: 3.20
>Pro Audio Spectrum driver Copyright (C) by Hannu Savolainen 1993-1996
>YM3812 and OPL-3 driver Copyright (C) by Hannu Savolainen, Rob Hooft 1993-1996
>Capability LSM initialized
>kjournald starting.  Commit interval 5 seconds
><snip>
>[drm] Initialized sis 1.1.0 20030826 on minor 0: Silicon Integrated 
>Systems [SiS] 300/305 PCI/AGP VGA Display Adapter
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?
>Sound: DMA (output) timed out - IRQ/DRQ config error?

This may indicate a mismatch between the card's hardware settings and the 
values in /etc/modules. Especially if you get these messages only when you 
try to specify sb_* values.

>me@mymachine:~$
>
>>C. Relevant parts of /proc/interrupts and /proc/ioports from AFTER step 
>>3. (Interrupts don't show up until they are accessed.)
>
>me@mymachine:~$ cat /proc/interrupts
>            CPU0
>   0:   17539757          XT-PIC  timer
>   1:      33620          XT-PIC  i8042
>   2:          0          XT-PIC  cascade
>   3:       2244          XT-PIC  PAS16
>   7:          1          XT-PIC  parport0
>   8:          1          XT-PIC  rtc
>  10:       8647          XT-PIC  eth0
>  11:     192875          XT-PIC  uhci_hcd
>  12:      44880          XT-PIC  i8042
>  14:      18338          XT-PIC  ide0
>  15:      35222          XT-PIC  ide1
>NMI:          0
>LOC:          0
>ERR:          0
>MIS:          0
>me@mymachine:~$
>
>me@mymachine:~$ cat /proc/ioports
>0000-001f : dma1
>0020-0021 : pic1
>0040-0043 : timer0
>0050-0053 : timer1
>0060-006f : keyboard
>0070-0077 : rtc
>0080-008f : dma page reg
>00a0-00a1 : pic2
>00c0-00df : dma2
>00f0-00ff : fpu
>0170-0177 : ide1
>01f0-01f7 : ide0
>0376-0376 : ide1
>0378-037a : parport0
>037b-037f : parport0
>0388-038b : Yamaha OPL3
>03c0-03df : vga+
>03f6-03f6 : ide0
>03f8-03ff : serial
>0778-077a : parport0
>0800-083f : 0000:00:07.3
>   0800-083f : pnp 00:00
>0840-085f : 0000:00:07.3
>   0850-085f : pnp 00:00
>     0850-0857 : piix4-smbus
>0cf8-0cff : PCI conf1
>d880-d8ff : 0000:00:0e.0
>dc00-dc7f : 0000:00:0d.0
>   dc00-dc7f : 0000:00:0d.0
>dce0-dcff : 0000:00:07.2
>   dce0-dcff : uhci_hcd
>e000-efff : PCI Bus #01
>   ec00-ecff : 0000:01:00.0
>ffa0-ffaf : 0000:00:07.1
>   ffa0-ffa7 : ide0
>   ffa8-ffaf : ide1
>me@mymachine:~$
>
>Hey, why are ide0 and parport0 showing up thrice? Note that no address in 
>the 200 range are showing up.
>
>>D. The EXACT line you used in running the music program you test with.
>
>See my first answer above. Does it suffice? Copied right from the terminal 
>where I ran it.
>
>>E. Any STDOUT or STDERR output from the test music program (like you did 
>>before).
>
>I think it's there with the command, right?
>
>>F. The output of "ls -l /dev/dsp*" (or the equivalent if you are using 
>>devfs).
>
>See above.

The response above does cover all 3 of these.

>>One last detail -- you say you are testing with this command:
>>
>>me@mymachine:~/MyMusic$ sudo mpg123 -a /dev/audio1 03\ -\ Norman\ Blake\ 
>>\ \ You\ Are\ My\ Sunshine.ogg
>>
>>Last time I checked, mpg123 does not play ogg files. You need to match 
>>the app to the file type ... use ogg123 with *.ogg files, mpg123 with 
>>*.mp3 files. This is not the cause of the problem you report though ... 
>>most likely that is the absence of /dev/dsp1 .
>
>Ok. Registered. I never used mpg123 before and was expecting it to give me 
>some indication if I sent it the wrong kind of file.

In your tests, mpg123 never got around to attempting to play the file (and 
Linux apps in general don't pay attention to extensions), so mpg123 never 
"noticed" that it wasn't in mp3 format. For example:

         ray@flagg:~$ mpg123 
/home/music/ogg/Bob_Seger_\&_The_Silver_Bullet_Band/Live_Bullet/Katmandu.ogg
         High Performance MPEG 1.0/2.0/2.5 Audio Player for Layer 1, 2 and 3.
         Version 0.59r (1999/Jun/15). Written and copyrights by Michael 
Hipp.
         Uses code from various people. See 'README' for more!
         THIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!

         Directory: 
/home/music/ogg/Bob_Seger_&_The_Silver_Bullet_Band/Live_Bullet/
         Playing MPEG stream from Katmandu.ogg ...
         Junk at the beginning 4f676753
         Free format not supported: (head ffff0703)
         Junk at the beginning 766f7262
         MPEG 1.0 layer I, 320 kbit/s, 48000 Hz dual-channel
         Illegal Audio-MPEG-Header 0x7017380c at offset 0x1709.
         Skipped 3152148 bytes in input.
         Illegal Audio-MPEG-Header 0xcb0ff566 at offset 0x30315d.

Of course, we folks who never make mistakes normally don't get to see the 
error messages, so how would we know what they say?

>James
>
>PS Miscellaneous observations: the opl3 module will assign itself to io 
>0x388 while the pas2 module will not--regardless of the presence or 
>absence of the opl3 driver with its io parameter (tried it both with and 
>without). The kernel doc seemed to assign pas2 and opl3 (where needed, and 
>I'm not sure I need it: seems to make no difference in sound output 
>whether it's there or not) the same io unabashedly, so I did the same. 
>Assigning the pas2 module to io 0x230 made no difference in sound 
>characteristics that I could observe--whether or not a sb_io=0x230 was 
>present or absent. And the io still didn't show up in cat /proc/ioports 
>output in any case. Leaving the io paramter absent from the pas2 line 
>results in an error message, as follows:
>Mar 28 20:57:29 localhost kernel: Pro Audio Spectrum driver Copyright (C) 
>by Hannu Savolainen 1993-1996 Mar 28 20:57:29 localhost kernel: I/O, IRQ, 
>DMA and type are mandatory
>--regardless of whether I've specified sb_io= or not on that same line.
>
>PPS Whew! I should get an honorary geek doctorate for this, a good 
>citizenship award, or at least be taught the secret handshake of the Geek 
>International Cadre. How 'bout it, Ray?

Shhh. There is no secret Geek International Cadre, let alone a secret 
handshake. Nothing to see here folks ... move along. And pay no attention 
to the man behind that curtain ....


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
