From: "ymc014" <ymc014@ymc.mitsumi.co.jp>
Subject: Re: sound card problem
Date: Thu, 21 Apr 2005 12:04:11 +0800
Message-ID: <014d01c54627$2d1de550$4a071aac@autocadmachine1>
References: <00a701c54610$9932c6f0$4a071aac@autocadmachine1> <426709C9.6090507@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: Ray Olszewski <ray@comarre.com>

Hello,

    I really apologize for not informing in advance that this is the first
time I've used linux,I've been using windows through the years,from windows
95 up to windows XP(my OS before I've decided to switch to Linux) so I do
not really know what is "modprobe sb","lspci-vv" etc., I am reading a FAQ
though(as of this writing I've just open the link to a FAQ given below) but
for now I may not be able to give you the details that you want to know to
help me except for my hardware or system.

I have a fairly new sytem:
      Pentium 4, speed 2.8 GHz (HyperThread and of course a suitable
      motherboard)
      512MB RAM(PC-400 Kingston)
      80 GB Seagate HDD(not SATA)
      Soundcard: It says here in the box,Creative SoundBlaster Audigy LS
                        Asian Edition

      OS: Windows XP Home Edition

So there,and by the way,although the price of a soundcard here is
affordable,I have just bought my soundcard last december and I am wont to
use it.

I will take up your suggestion though to try Fedora but I will have to
familiarize first this one. I appreciate very much your help.Thank You.

----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: "linux-newbie" <linux-newbie@vger.kernel.org>
Sent: Thursday, April 21, 2005 10:02 AM
Subject: Re: sound card problem


> ymc014 wrote:
> > Hello,
> >
> >      I had just installed Red Hat 9 but I have a problem with my
> > soundcard,it does not recognize the Creative SoundBlaster in my
hardware, I
> > tried looking at the creative website for a driver suitable for linux
> > unfortunately I didn't find any. So am I hopeless here?I wouldn't want
to go
> > back to XP but if I cannot use my soundcard I do not have any other
option.
> > Thanks.

Ray Olszewski san wrote:

> There are many different cards whose names begin with "Creative
> SoundBlaster", and most, if not all, are supported by recent (2.4.x and
> 2.6.x) Linux kernels. Typically they will use (on 2.4.x, anyway) the
> SBLive module.
>
> First thing to do is see if "modprobe sb" does anything useful.
>
> Second thing is to run "lspci -vv" and check the section for the
> "Multimedia audio controller". If there is not one ... might you have an
> old, ISA-bus sound card (I doubt it, since you mention XT as the
> alternate OS)?
>
> Third thing to do is wonder if you have a PnP problem. I'm not sure what
> default Red Hat kernels do here, but the usual solution in Linux is to
> let the BIOS handle PnP (that is, in the BIOS setup screens, wherever it
> asks about "PnP OS", say No so the BIOS will know to set up IRQs ans IO
> ports.
>
> (Do both the above things as root.)
>
> Creative does (or did) provide some drivers, but I think the kernel
> drivers these days handle most, if not all, SoundBlaster cards.
> Certainly the info at http://opensource.creative.com/soundcard.html
> seems to say this is so. They do mention there that some more recent
> cards require the ALSA drivers, which RH may not try by default (not
> being a Red Hat user, I'm not sure what it autoprobes).
>
> Beyond this ... we can probably be of more help to you, but not until
> you tell us more about the hardware ... a general description of the
> system (especially if it actually has sound on the mobo) and the info
> the lspci command I mention above reports about the audio subsystem. If
> you do post again with these details, please also include the output of
>
> lsmod
> more /proc/interrupts
> more /proc/ioports
> uname -a
>
> Your final recourse (other than XT) is, of course, to replace the sound
> card with one that is supported. Here in the USA, that's a pretty cheap
> solution (around $30, usually little enough money to spend for the
> opportunity to run Linux). I don't know if prices in Japan are similarly
> modest, though.
>
> BTW, these days Red Hat 9 is not current version of Linux. If you prefer
> REd Hat to the other distros, you probably want to move to Fedora (see
> http://www.redhat.com/apps/download/ to get started with this). But this
> is probably not related to your problem.
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
