From: Ray Olszewski <ray@comarre.com>
Subject: Re: hardware advice for a PC moron
Date: Fri, 16 Jan 2004 09:28:05 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040116090002.01fa1788@celine>
References: <20040116103416.GA16542@panix.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040116103416.GA16542@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

It is difficult to give you general advice on this broad a topic in an 
e-mail reply. I'll limit myself to a few specifics you might find helpful.

First, Linux runs properly on pretty much any CPU/mobo conbination that 
works from a hardware standpoint. There are occasional reports of problems 
with specific bus chipsets in some applications, though, so your safest 
approach is to check the chipset on any mobo you are considering and Google 
it for Linux information.

Aside perhaps from Firewire (which I'm just not familiar with), Linux has 
support for all the requirements you mention in your list.

With the display you want, I assume you primarily want to work in X. This 
should present no problem with any modern graphics card -- though your best 
bet for checking card/chipset details is the compatibility list at 
www.xfree86.org --  except for playback of full-motion video. Here you have 
two special considerations.

One, for efficient playback of video, you want an X server that supports 
the xVideo (XV) extensions that give video apps direct access to the video 
hardware. Many recent X servers do this, but people on video lists seem to 
favor nVidia cards in particular, using a proprietary X driver that nVidia 
makes available on a non-Open Source basis. (Whether this is an option for 
you depends on the strength of your commitment to Open Source software.)

Two, you may want a video card that supports output to a TV. This limits 
your choice quite a bit, because it is difficult to find an X server that 
supports both xVideo and TV out. (The NVidia driver I mentioned above does 
support both, BTW, which is an important part of why it is popular in 
video-on-Linux circles.) See my comments on vidcap below for a bit more on 
this.

While Linux supports pretty much any modern chipset for audio output, it is 
occasionally picky as to audio input. I've had trouble with the OSS drivers 
for the VIA chipset, as an example (but the newer ALSA drivers worked OK).

Video capture can be done in many ways. My own experience is with 
BTTV-based vidcap cards like the Hauppauge Win-TV Go and a similar 
Avermedia card. They can capture a realtime video signal from 
broadcast/cable source, from Composite in, and sometimes from S-Video in, 
but they rely on software to encode the video to (say) MPEG4/DivX. Newer, 
more expensive vidcap cards, like the Hauppauge PVR-250, have onboard 
hardware encoders that do realtime encoding to MPEG2. Software encodding 
demands a lot of CPU time ... when capturing, you need to be careful about 
what else the system is doing to avoid dropped frames, especially with what 
I think of as a "median-level CPU" (a 2 GHz Celeron or thereabouts) ... but 
hardware encoding uses very little CPU time. And a newer Hauppauge card, 
the PVR-350, has TV out with hardware decoding as well.

Though you mention "ssh'ing into work", you don't mention what sort of 
Internet access you expect the system to have. Linux supports dial-up just 
fine, and broadband access via cable and DSL is well supported with 
Ethernet-based broadband "modems" ... I'm not sure how good support for 
USB-based broadband "modems" is (it used to benon-existent).

I haven't used a DVD burner yet with Linux, but I think you want to check 
the software options before you buy one. In particular, check whether the 
app you prefer supports both the + and - standard (at least one does, but 
I've seen at least one other that only supported +). I've never run into a 
CD burner that did not work with Linux, so I expect all modern internal 
(ATAPI or SCSI) ones at least will work fine.

Finally, I usually buy my hardware locally and built my new Linux machines 
from parts (though I do convert old Windows machines, for example a 533 MHz 
Celeron E-Machine, for special purpose uses). But this works because I live 
in Palo Alto, California, in walking distance of a good electronics 
discounter, Fry's Electronics. You can get good deals online, but what your 
best choice is depends too much on where you live for general advice to 
apply. On that score, you need some help from someone in New Jersey, or at 
least somewhere in the Greater New York metro area.

There used to be a Linux Compatibility HowTo, which you can look for in the 
usual places. If it's been kept up to date, it will be a good place to 
explore your hardware questions.

I don't know if this sort of general response is helpful or not. You might 
do better to look at the HowTo, find out what variety of hardware is 
readily available to you,  and come back here with specific questions.

At 05:34 AM 1/16/2004 -0500, Rei Shinozuka wrote:
>i've never owned a PC or a windoze system (except virtual PC),
>so i am a particular moron when it comes to intel hardware.
>
>i'd appreciate advice as to how to best buy/build an intel/amd system and
>build a linux workstation on top of.  while i am a wintel moron, i have
>been using linux for a couple of years, UNIX for 20 years, and i was
>been a systems engineer for motorola in the distant past so i've been
>inside hardware before.
>
>my linux hardware requirements:
>
>1280x1024x24 or better display
>USB
>Firewire
>SCSI (for scanner)
>CDR/CDRW
>DVDR/DVDRW
>analogue audio input
>? composite video input (maybe... i just got a tivo and am amazed at
>   what it can do...)
>
>i'd use it for software development, mozilla, some openoffice,
>vuescanning in photos, gimping/cinepainting photos,
>watching dvd's, burning mp3 cds, ssh'ing into work and my
>panix account.
>
>i'd probably be happy with a median-level CPU (amd or intel).
>
>i'd hate to buy a system with windoze installed.
>
>i'll take linux compatibility and support over exotic hardware.
>
>if anyone could point me to a good source or strategy as to building
>such a machine, i'd be most grateful.
>
>thanks!
>
>-rei
>
>--
>Rei Shinozuka shino@panix.com
>Ridgewood, New Jersey


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
