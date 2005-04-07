From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Thu, 07 Apr 2005 09:26:25 -0700
Message-ID: <5.1.0.14.1.20050407090339.03494290@celine>
References: <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro>
 <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro>
 <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
 <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain> <Pine.LNX.4.61.0504070853500.5694@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504070853500.5694@localhost.localdomain>
References: <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
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
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:09 AM 4/7/2005 -0500, James Miller wrote:
>On Wed, 6 Apr 2005, James Miller wrote:
>
>>range) or to disable ttyS1 (COM 2 as the BIOS sees it, I believe) and see 
>>if that relieves any potential IRQ 3 conflict.
>
>I tried disabling COM 2 in the BIOS (set it to "off" there). When I look 
>at dmesg output, it does, indeed, appear to be off and is not getting 
>assigned an IRQ by Linux. I see in dmesg output only ttyS0, assigned IRQ 
>4. So it seems I have succeeded in freeing up IRQ 3 and resolving any 
>potential conflict over it that might be contributing to sound issues. 
>Nonetheless, the sound is of the same poor quality when I try to play 
>files stored on the hard drive with mp3blaster. It is scratchy and I get 
>pauses when some other computer activity occurs, just like before. I 
>therefore presume that IRQ conflicts are not the operative problem here.
>
>I see no io address associated with the sound module(s) in cat 
>/proc/ioports output, so that could be part of my problem. I also do not 
>see IRQ 5 associated with anything (or even listed) in cat 
>/proc/interrupts output, though I've tried to associate the pas2 module 
>with it by specifying sb_irq=5 (among other parameters) in /etc/modules. I 
>don't see the device files Ray mentioned as being used by Soundblaster 
>emulation (/dev/dsp1 or /dev/audio1) in the /dev directory, but I think 
>those should be auto-created on boot if they are needed.
>
>Further suggestions? A trip to Frys later today, perhaps?


Before you spend your money ... surely a trip to Fry's would be expensive 
for someone in the CDT time zone ...  I'd suggest one more try, possibly 
one a bit more systematic than what you've been doing. (I'm seeing some 
gaps in your testing, and I can't tell if you really are skipping steps or 
just being terse in your reports to us.)

1. Set up the /etc/modules entry for the driver so it had both the regular 
and the sb_* entries. Of course, make sure the sb_* entries match the ones 
you set the card to using the DOS program.

2. Create the device entries if they are not present. (I was a bit 
surprised that they are not present, but if they are not, you are wrong 
that they "should be auto-created on boot if they are needed" ... well, 
maybe not wrong about "should*, but should != are, and in fact they are 
not.) Use mknod to create them by hand. (BTW, is /dev/dsp or /dev/dsp0 
present? If not, you may be using devfs, and that puts the devices 
somewhere different ... I forget where since I don't use it, but maybe 
/dev/sound/dsp1 and so on. If /dev/dsp is present, see if it is s symlink 
to something other than /dev/dsp0 ... this might help you track down dsp1.) 
The relevant values for creating dsp1 are major 14, minor 19 (man mknod 
will explain this). Also make sure the userid you are using for testing has 
permission to write to this device ... making its permissions match 
/dev/dsp will probably suffice.

3. Try one of the programs I suggested with the output directed to the 
appropriate dsp1 entry (which depends on where you find it, or put it, in 
step 2).

If sound still does not work, include in your report:

A. The EXACT entry from /etc/modules .

B. ALL dmesg output related to sound.

C. Relevant parts of /proc/interrupts and /proc/ioports from AFTER step 3. 
(Interrupts don't show up until they are accessed.)

D. The EXACT line you used in running the music program you test with.

E. Any STDOUT or STDERR output from the test music program (like you did 
before).

F. The output of "ls -l /dev/dsp*" (or the equivalent if you are using devfs).

As I said, you may already have done all of this carefully and correctly. I 
just can't tell from the messages you posted if this is the case, or if you 
might have skipped a step in the tests. (Well, it is clear that the absence 
of /dev/dsp1 is a problem, whatever else is going on.)

One last detail -- you say you are testing with this command:

me@mymachine:~/MyMusic$ sudo mpg123 -a /dev/audio1 03\ -\ Norman\ Blake\ \ 
\ You\ Are\ My\ Sunshine.ogg

Last time I checked, mpg123 does not play ogg files. You need to match the 
app to the file type ... use ogg123 with *.ogg files, mpg123 with *.mp3 
files. This is not the cause of the problem you report though ... most 
likely that is the absence of /dev/dsp1 .


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
