From: lindax newbie <linux-newbie@tlinx.org>
Subject: Re: dma turned off
Date: Sat, 20 Nov 2004 11:18:19 -0800
Message-ID: <419F987B.5070003@tlinx.org>
References: <20041116040117.445874A6C6@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041116040117.445874A6C6@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

2.6.7 was an "odd" numbered kernel...:-)
I found it to be too unstable to use though 2.6.5 (odd as well, shoots 
my theory)
seemed stable.  Linus is trying to get lots of bug fixes into the 
current kernel
and release a "stable" kernel again.  I guess even he realized that the 
2.6 series
had evolved into a 2.7-type kernel (developer/unstable) kernel as to make it
unusable for so many as to potentially start hurting their "test" base.

The idea, before, was that only stable things were tried or back ported 
into the
stable kernel, but Linus in his genius, declared that those who wanted 
stable
kernels would henceforth get them from "distros", and he didn't need no 
testbase
for an even number series...  Some of us had hoped that the 2.6 series 
wouldn't evolve
into an unstable 2.7 series named 2.6.x so we could continue to be 2nd 
line testers
for stable releases, but that has not proved to be the case (noticably 
for 2.6.7).
I used to only use vanilla even release kernels, but have been forced 
back to vendor
kernels for newer installs.  Hopefully the current stable release, when 
it comes out,
will be more stable.  Haven't been following it that closely now and 
they don't
get announced regularly on "/." (or I'm missing some "/.-age").

Of course the last stable release from my vendor wouldn't boot or update 
any of
my systems since XFS was broken in the vendor (SuSE's) stable 
release....so much
for vendor stability.  :-(  Yeah, they had a patch, but that didn't help 
if you
needed to be online to download the patch -- their CD/DVD-installer 
doesn't handle
proxies. :-(

-l

Peter wrote:

>Thank you so much Richard!
>
>pa3gcu@zeelandnet.nl said:
>  
>
>>I seem to remember you mentioning that you had compiled a new kernel.??? If
>>that is true then maybe you did not define your IDE chipset, if that is the
>>case then that is your problem as the kernel will fall back onto, "slow but
>>works on anything" sort of arrangement. The command 'lspci' should say what
>>the chipset is, then  checkout /usr/src/linux/config and make sure you have
>>defined support for that chipset.
>>    
>>
>
>In my last mail I said I give up on the idea of installing kernel 2.6.7 in 
>Slackware10 since I could not produce any sound and programs like kppp took 
>twice as long to load than with 2.4.26 and dma could not be turned on.
>
>Now as per your advice I had one last try and behold there is now sound and 
>same loading speed for kppp as in 2.4.26 and dma is turned on.
>
>My chipset is of VIA Technologies. Since make xconfig gives an error with 
>2.6.7 I am using menuconfig in which I have a hard time finding things like 
>VIA. So I went into .../linux/.config searched for VIA82xxx set them to =y 
>then
>make, cat bzImage > vmliz, lilo and there it was.
>
>Except the sound is very faint and I have to make aumix -L first to have full 
>sound. No problem I put that into .profile. Apparently the setting is lost 
>when shutting down unlike in 2.4.26.
>
>On boot I still get the error meassge:
>
>FATAL: Module snd_pcm_oss not found.
>FATAL: Module snd_mixer_oss not found.
>
>Regards
>
>  
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
