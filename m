From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: dma turned off
Date: Tue, 16 Nov 2004 07:30:52 +0100
Message-ID: <200411160730.52132.pa3gcu@zeelandnet.nl>
References: <20041116040117.445874A6C6@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041116040117.445874A6C6@heisspf>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

On Tuesday 16 November 2004 05:01, Peter wrote:
> Thank you so much Richard!
>
> pa3gcu@zeelandnet.nl said:
> > I seem to remember you mentioning that you had compiled a new kernel.???
> > If that is true then maybe you did not define your IDE chipset, if that
> > is the case then that is your problem as the kernel will fall back onto,
> > "slow but works on anything" sort of arrangement. The command 'lspci'
> > should say what the chipset is, then  checkout /usr/src/linux/config and
> > make sure you have defined support for that chipset.
>
> In my last mail I said I give up on the idea of installing kernel 2.6.7 in
> Slackware10 since I could not produce any sound and programs like kppp took
> twice as long to load than with 2.4.26 and dma could not be turned on.
>
> Now as per your advice I had one last try and behold there is now sound and
> same loading speed for kppp as in 2.4.26 and dma is turned on.
>
> My chipset is of VIA Technologies. Since make xconfig gives an error with
> 2.6.7 I am using menuconfig in which I have a hard time finding things like
> VIA. So I went into .../linux/.config searched for VIA82xxx set them to =y
> then
> make, cat bzImage > vmliz, lilo and there it was.

I'm old fashioned about things, i always use 'make config' but i also cheat a 
lot and edit .config and then use 'make oldconfig' that way one only gets to 
answer newly found changed configuration.

> Except the sound is very faint and I have to make aumix -L first to have
> full sound. No problem I put that into .profile. Apparently the setting is
> lost when shutting down unlike in 2.4.26.

Use  alsa's programs to set your sound 'alsactl' 'alsamixer' etc etc.

> On boot I still get the error meassge:
>
> FATAL: Module snd_pcm_oss not found.
> FATAL: Module snd_mixer_oss not found.

Could be old entries in /etc/modules.conf confusing module loading.

A good place to get hints is;
http://www.djcj.org/LAU/guide/index.php
Has many links as well.

>
> Regards

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
