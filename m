From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Bad Sound in Slackware
Date: Sat, 7 Feb 2004 16:19:37 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402071619.37257.pa3gcu@zeelandnet.nl>
References: <20040206071508.4A4921C946@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040206071508.4A4921C946@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Friday 06 February 2004 08:15, you wrote:
> Thanks Richard!
>
> see my reply to the list for most of your questions.

I have cc'ed this back to the list.

> pa3gcu@zeelandnet.nl said:
> > In other words stop using ALSA and use OSS
>
> How is that done? When I disabled alsactl in /etc/rd.c I had now more
> sound.

Using the default installed 2.4.22 kernel from slack-9.1.
Remove ALL ALSA modules (if they are loaded)
Then all that should be nessasary is;
modprobe via82cxxx_audio
The dependancies should not be a problem as in
/lib/modules/2.4.22/modules.dep the following is defined.

/lib/modules/2.4.22/kernel/drivers/sound/via82cxxx_audio.o.gz:  
/lib/modules/2.4.22/kernel/drivers/sound/ac97_codec.o.gz \
        /lib/modules/2.4.22/kernel/drivers/sound/soundcore.o.gz


> pa3gcu@zeelandnet.nl said:
> > HuuH,! No such file or directory
>
> @/ peter]$ ls /etc/modules.conf
> /etc/modules.conf
>
> OK I mad missed the 's' or if there es no such file in Slackware I must
> have copied it there from RH in the hope to get the sound going.

Slackware differs none its is "modules.conf"

>
> Regards

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
