From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Bad Sound in Slackware
Date: Sat, 7 Feb 2004 20:25:34 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402072025.34606.pa3gcu@zeelandnet.nl>
References: <20040206071508.4A4921C946@heisspf> <5.1.0.14.1.20040207080616.01fd0530@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040207080616.01fd0530@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 07 February 2004 17:09, Ray Olszewski wrote:
> At 04:19 PM 2/7/2004 +0100, pa3gcu wrote:
> [...]
>
> >Using the default installed 2.4.22 kernel from slack-9.1.
> >Remove ALL ALSA modules (if they are loaded)
> >Then all that should be nessasary is;
> >modprobe via82cxxx_audio
> >The dependancies should not be a problem as in
> >/lib/modules/2.4.22/modules.dep the following is defined.
> >
> >/lib/modules/2.4.22/kernel/drivers/sound/via82cxxx_audio.o.gz:
> >/lib/modules/2.4.22/kernel/drivers/sound/ac97_codec.o.gz \
> >         /lib/modules/2.4.22/kernel/drivers/sound/soundcore.o.gz
>
> Richard -- In a separate message, Peter reported having trouble with
> modprobe. It got me wondering if Slackware doesn't automatically run depmod
> when doing "make modules_install" ... or maybe during boot/init.
> Slackware's init setup is so different from other major distros, this seems
> at least possible to me ... and it would explain Peter's success with
> insmod but failure with modprobe. I wondered if you knew.
>

Slackware is no different to any other distro when it comes to using programs 
like 'make' to compile a kernel, the command 'make modules_install' ends with
the following, unless of course one tells 'make' to do otherwise in the 
Makefile of the kernel source.

if [ -r System.map ]; then /sbin/depmod -ae -F System.map  2.4.22-ac4-3; fi
Where "linux-2.4.22-ac4-3" is your kernel version and EXTRAVERSION.

I rather think the problem Peter is having is because he is copying Redhat 
modules into another kernel version, or at least thats the way i ""quickly"" 
read his mail.
IMHO Peter is experimenting, he is using modules from another distro, i would 
not even recomend using modules from another kernel version, let alone 
another distro.
He possably after copying those modules to the destination dir, did not do;
depmod -a
If he did i am sure he would have gotten a lot of error messages about, 
"Unresolved symbols".

I suggest Peter uses the default installed kernel 2.4.22 from slackware 9.1 
and try what i said, i can assue folks it will work IF they follow my words 
to the "TEE", after all it works for me.

On top of all that, if Peter wants he can have a copy of my presant .config 
file from which he can then see just what i compile into and as modules for 
my system considering i have one of these dam chipsets that just does not 
work properly like the folks at ALSA think.

-- 
If the Linux community is a bunch of theives because they
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
