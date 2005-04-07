From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problems on Debian unstable
Date: Thu, 07 Apr 2005 10:48:04 -0700
Message-ID: <5.1.0.14.1.20050407103855.0202fff0@celine>
References: <5.1.0.14.1.20050407090339.03494290@celine>
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
 <5.1.0.14.1.20050407090339.03494290@celine> <Pine.LNX.4.61.0504071153470.5694@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504071153470.5694@localhost.localdomain>
References: <5.1.0.14.1.20050407090339.03494290@celine>
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
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:31 PM 4/7/2005 -0500, James Miller wrote:
[...]
>Anyway, I'll try what you've suggested. But one aspect needs some further 
>comment and clarification, namely:
>
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
>I think we're on udev here, Ray. This system was just installed (couple of 
>weeks ago) using a netinst image (testing) and immediately switched over 
>to unstable. Things like devfs and udev evoke fits of dyslexia in me. 
>Maybe I can overcome the miscombobulation somewhat in this discussion.
>
>Upon further inspection, here's what I've found. First, /dev/dsp doesn't 
>appear to be a symlink. Second, I have a sub directory under /dev called 
>.udevdb, which is one of my indications that the system is using udev. 
>Under /dev I have dsp and dspW. I also see audio there. No audio1 or 
>dsp1--or dsp0 for that matter. Then, there is a sub directory called 
>.static. Under .static there is also a sub directory dev, and under this 
>one there is, in fact, a dsp, dsp1, dsp2, dsp3 and audio, audio1, audio2 
>and audio3. I didn't see these previously. I've just tried outputting 
>sound to dsp1 and audio1 there using your ogg123 example, but received the 
>same oss error I posted about last night.
>
>So, given that udev seems to be in play here, and that dsp1 and audio1 
>exist on the system under /dev/.static/dev, how do you recommend I 
>proceed? Is my test attempting to output that .ogg file to 
>/dev/.static/dev/dsp1 and /dev/.static/dev/audio1 valid (other things 
>being equal)?
>
>Once I get some more feedback on this, I'll proceed with the further 
>testing you suggest.

To get really good help here, you need to hear from someone who is using 
udev. I'm not ... I still use 2.4.x kernels on everything I run ... so I am 
not familiar with the details of this mechanism for making dynamic nodes. 
But I would guess that the devices you found in /dev/.static/dev are the 
ones of interest ... once you report the details on them that Iasked for in 
my prior message, I'll feel more confident of that belief.

At this point, my best suggestion is to follow the step-by-step procedure I 
described in my prior message, using /dev/.static/dev/dsp1 (or audio1) as 
the target device. Once I see the full report of the test, as I outlined it 
in my prior message, I (and others) should be able to indicate if there is 
an error of detail in your procedure or if the sound driver just does not 
work the way I think it does.

PS, -- In addition to what I asked for before, please include the EXACT 
output of both "ls -l /dev/dsp*" -AND- "ls -l /dev/.static/dev/dsp*".

PPS -- Part of my intent in outlining a test procedure was to get all the 
results in one place, all in the same message. So please do quote them when 
you do the test ... don't just say they were the same as before.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
