From: Ray Olszewski <ray@comarre.com>
Subject: Re: sound card problem
Date: Wed, 20 Apr 2005 21:15:09 -0700
Message-ID: <426728CD.60402@comarre.com>
References: <00a701c54610$9932c6f0$4a071aac@autocadmachine1> <426709C9.6090507@comarre.com> <014d01c54627$2d1de550$4a071aac@autocadmachine1>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <014d01c54627$2d1de550$4a071aac@autocadmachine1>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

ymc014 wrote:
> Hello,
> 
>     I really apologize for not informing in advance that this is the first
> time I've used linux,I've been using windows through the years,from windows
> 95 up to windows XP(my OS before I've decided to switch to Linux) so I do
> not really know what is "modprobe sb","lspci-vv" etc., I am reading a FAQ
> though(as of this writing I've just open the link to a FAQ given below) but
> for now I may not be able to give you the details that you want to know to
> help me except for my hardware or system.

Yeah, I pretty much read you as a first-timer from your earlier message. 
That's why I gave you the *exact* commands you need to type in to get 
the relevant information. All you need to do is type what I wrote and 
look at (or send us) the output. But see below; you probably do not 
actually have to go through all of that now.

> 
> I have a fairly new sytem:
>       Pentium 4, speed 2.8 GHz (HyperThread and of course a suitable
>       motherboard)
>       512MB RAM(PC-400 Kingston)
>       80 GB Seagate HDD(not SATA)
>       Soundcard: It says here in the box,Creative SoundBlaster Audigy LS
>                         Asian Edition
> 
>       OS: Windows XP Home Edition

Ah, that explains the problem. The Creative Website that you probably 
found says, in part --

"Some OEM cards and the latest retail boards (such as the Dell CT0200 
and the Audigy LS) will not work with the drivers included in most Linux 
distributions. For those cards, try the latest code from ALSA or 
purchase a driver from 4FrontTechnologies."

Unless you want to pay for the proprietary 4Front drivers (I'm not 
familiar with them myself), it sounds like you need to use the ALSA 
sound modules, not the standard (OSS) modules that come with the Linux 
kernel.

Use the Red Hat Package Manager utilities (rpm-find, I think) to find 
the alsa package (its name will probably be something like 
alsa-modules-2.4-something-or-other) and install it on your system. (One 
of the Red Hat or Fedora users here will have to help you with using 
rpm, since I use a different distro and have not used rpm in 5 or more 
years.) Also look for a package named something like alsa-utils ... it 
includes, among other things, an app that will detect your sound card 
and set up the alsa modules to support it.

> 
> So there,and by the way,although the price of a soundcard here is
> affordable,I have just bought my soundcard last december and I am wont to
> use it.
> 
> I will take up your suggestion though to try Fedora but I will have to
> familiarize first this one. I appreciate very much your help.Thank You.
[old stuff deleted]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
