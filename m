From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound problem (was: [no subject])
Date: Fri, 06 Feb 2004 09:58:33 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040206093637.01fa5758@celine>
References: <Your message of "Thu, 05 Feb 2004 08:36:19 PST."  <5.1.0.14.1.20040205081546.01f9a858@celine> <20040206065912.2EB3B1C946@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040206065912.2EB3B1C946@heisspf>
References: <Your message of "Thu, 05 Feb 2004 08:36:19 PST."  <5.1.0.14.1.20040205081546.01f9a858@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:59 PM 2/6/2004 +0800, Peter wrote:
[...]
>ray@comarre.com said:
> > for that matter, what "in sound" means
>
>/usr/src/linux make xconfig, then klick on sound

This cannot be a complete description of what you did with respect to the 
info you posted before  ... since the modules lists you showed us indicated 
that Slack was using ALSA sound while RH was using OSS sound ... or if it 
is complete, it hides some omission of consequence.


>Well, when I had installed RH9.0 I could not open siam office which I could
>with SW9.1. So I installed the SW 2.4.22 kernel in RH and siam office opened.
>Having the distorted sound in SW to which distro I am planning to migrate
>eventually I put the same sound settings in SW found in RH using make xconfig
>sound. Then I copied the /etc/modules.conf of RH to SW /etc/. That did not
>change anuthing in SW as for distorted sound.

"put" them where? And what "sound settings" do you mean? Do you mean you 
took the portion of the ./.config file created my "make xconfig" under RH 
into the ./.config file for the Slackware system, then recompiled its 
kernel? If you don't mean that, you need to be explicit about what you did 
... all "make xconfig" affects is the ,/.config file used for kernel 
(including module) conpilation.

After you used make xconfig to tedit ./.config (then recompiled the kernel, 
then installed the new one, of course), did the list of modules installed 
by Slackware (output of lsmod, I mean) change to match the RH list? If not, 
you did something wrong or incomplete here ... your description is too 
abbreviated for me to guess what.

But put all that aside. Your problem in Slackware may simply be that you 
have not used amixer or alsamixer to configure the sound modules correctly. 
Out of the box, they typically accept input from too many sources, which 
can cause the kinds of sound problems you are describing. Run alsamixer and 
make sure that all inputs, except the ones you are actually using -- 
probably either "line" or "PCM" -- are muted. Then see if that eliminates 
your problem.


>ray@comarre.com said:
> > Third, what sound card (or mobo sound) is involved?
>
>The motherboard is P4VMM2 ,
>the chipset P4M266/A Northbridge and VT8235 Southbridge,
>Audio - AC'97 Audio Codec on the mobo.
>Celeron 4 processor
>
>
>ray@comarre.com said:
> > Finally, what use is producing the "very annoying distorted sound" and
> > what  else can you tell us about its characteristics?
>
>All the .wav files I use for sounds such as opening, closing, iconify etc.
>windows.
>Playing a video CD is plain impossible whereas playing a music CD has no
>distortion.
>The distortion is a continuous scratching and a tapering-off really annoying
>sound.
>
>I went now back into SW9.1 did a make xconfig sound and klicked yes for OSS.
>Now the tapering-off sound is gone, however, the annoying scratch 
>persists. It
>is like an electrical static sound only harder on both speakers. I check the
>wires, the plug, changed speakers; they must be all fine since there is now
>such scratch with the RH9.0 sound system.

With this change in procedure, do the same modules now load in Slack as in 
RH? How is this different from what you did the first time (and described 
above as "I put the same sound settings in SW found in RH using make 
xconfig") -- did "klicked yes for OSS" not count as part of "the same" the 
first time around?

Peter -- It's really hard to give you meaningful help when your messages 
contain inconsistencies like that last one ... you really need to provide 
more careful and exact descriptions. I've no doubt your actual problem is 
simple to fix, and it's only this playing of an e-mail analog to blind 
man's bluff that makes it seem hard or obscure.

First time around, it was clear that even if you thought you set the two 
distros up "the same", they were loading different modules. The lsmod 
output you provided before showed that beyond any debate. This time around, 
we again need to know if they are now really both running the OSS modules, 
or if Slack is still trying to use ALSA.

Assuming Slack is still using ALSA, you have two choices --

         1. Recompile the Slack kernel, and modify Slack's init scripts, so 
that Slack uses OSS. For this, you may need help from a Slack user, since 
its init-script system is far more different from all the other main 
distros than any two of them are from eaxh other.

         2. Make ALSA work (probably by using alsamixer, as I said above).

One minor aside ... though we customarily treat all 2.4.22 (for example) 
kernel sources as the same in these discussions, that is not exactly true. 
I know that Debian kernels ship with a set of standard Debian patches that 
make them a bit different from "pure" kernel source obtained from, say, 
kernel.org ... and I *think* the same is true of other big name distros too 
... RH at least, if not also Slack. This probably does not affect today's 
problem, but we should remember that kernel sources from different distros 
are not always exactly the same.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
