From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Thu, 7 Apr 2005 12:31:04 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504071153470.5694@localhost.localdomain>
References: <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406120016.0201f1f8@celine> <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro> <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro> <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
 <5.1.0.14.1.20050407090339.03494290@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20050407090339.03494290@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 7 Apr 2005, Ray Olszewski wrote:

> bit more systematic than what you've been doing. (I'm seeing some gaps in 
> your testing, and I can't tell if you really are skipping steps or just being 
> terse in your reports to us.)

I'd call what I'm doing semi-controlled, semi-informed flailing. I know 
some basic troubleshooting techniques and I've adapted them from other 
realms to computers (actually refined them somewhat using computers). But 
I don't understand very thoroughly alot of what the computer is doing or 
Linux's role, so it's somewhat arbitrary. I'm not trained in any sort of 
formal way with computers--never used one prior to age 30--so approaching 
these things systematically is not my initial reaction.

Anyway, I'll try what you've suggested. But one aspect needs some further 
comment and clarification, namely:

> 2. Create the device entries if they are not present. (I was a bit surprised 
> that they are not present, but if they are not, you are wrong that they 
> "should be auto-created on boot if they are needed" ... well, maybe not wrong 
> about "should*, but should != are, and in fact they are not.) Use mknod to 
> create them by hand. (BTW, is /dev/dsp or /dev/dsp0 present? If not, you may 
> be using devfs, and that puts the devices somewhere different ... I forget 
> where since I don't use it, but maybe /dev/sound/dsp1 and so on. If /dev/dsp 
> is present, see if it is s symlink to something other than /dev/dsp0 ... this 
> might help you track down dsp1.) The relevant values for creating dsp1 are 
> major 14, minor 19 (man mknod will explain this). Also make sure the userid 
> you are using for testing has permission to write to this device ... making 
> its permissions match /dev/dsp will probably suffice.

I think we're on udev here, Ray. This system was just installed (couple of 
weeks ago) using a netinst image (testing) and immediately switched over 
to unstable. Things like devfs and udev evoke fits of dyslexia in me. 
Maybe I can overcome the miscombobulation somewhat in this discussion.

Upon further inspection, here's what I've found. First, /dev/dsp doesn't 
appear to be a symlink. Second, I have a sub directory under /dev called 
.udevdb, which is one of my indications that the system is using udev. 
Under /dev I have dsp and dspW. I also see audio there. No audio1 or 
dsp1--or dsp0 for that matter. Then, there is a sub directory called 
.static. Under .static there is also a sub directory dev, and under this 
one there is, in fact, a dsp, dsp1, dsp2, dsp3 and audio, audio1, audio2 
and audio3. I didn't see these previously. I've just tried outputting 
sound to dsp1 and audio1 there using your ogg123 example, but received the 
same oss error I posted about last night.

So, given that udev seems to be in play here, and that dsp1 and audio1 
exist on the system under /dev/.static/dev, how do you recommend I 
proceed? Is my test attempting to output that .ogg file to 
/dev/.static/dev/dsp1 and /dev/.static/dev/audio1 valid (other things 
being equal)?

Once I get some more feedback on this, I'll proceed with the further 
testing you suggest.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
