From: Ray Olszewski <ray@comarre.com>
Subject: Re: Bad Sound in Slackware
Date: Sat, 07 Feb 2004 08:09:37 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040207080616.01fd0530@celine>
References: <20040206071508.4A4921C946@heisspf>
 <20040206071508.4A4921C946@heisspf> <200402071619.37257.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200402071619.37257.pa3gcu@zeelandnet.nl>
References: <20040206071508.4A4921C946@heisspf>
 <20040206071508.4A4921C946@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:19 PM 2/7/2004 +0100, pa3gcu wrote:
[...]

>Using the default installed 2.4.22 kernel from slack-9.1.
>Remove ALL ALSA modules (if they are loaded)
>Then all that should be nessasary is;
>modprobe via82cxxx_audio
>The dependancies should not be a problem as in
>/lib/modules/2.4.22/modules.dep the following is defined.
>
>/lib/modules/2.4.22/kernel/drivers/sound/via82cxxx_audio.o.gz:
>/lib/modules/2.4.22/kernel/drivers/sound/ac97_codec.o.gz \
>         /lib/modules/2.4.22/kernel/drivers/sound/soundcore.o.gz

Richard -- In a separate message, Peter reported having trouble with 
modprobe. It got me wondering if Slackware doesn't automatically run depmod 
when doing "make modules_install" ... or maybe during boot/init. 
Slackware's init setup is so different from other major distros, this seems 
at least possible to me ... and it would explain Peter's success with 
insmod but failure with modprobe. I wondered if you knew.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
