From: Peter <heisspf@skyinet.net>
Subject: Re: No Sound with Kernel 2.6.7
Date: Fri, 12 Nov 2004 16:19:34 +0800
Message-ID: <20041112081934.9EB5547FD3@heisspf>
References: <200411112357.25724.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 11 Nov 2004 23:57:19 +0930."
             <200411112357.25724.Adam@Luchjenbroers.com> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks!


Peter said:
>> In kernel 2.4.26 all the settings are the same in /etc/rc.d  as well as for
>> modprobe.conf and modules.conf and the sound is no problem. 
>> What would be the next step?

Adam@Luchjenbroers.com
> Probably try enabling the following in your kernel (either as modules or
> right  in the kernel).

> OSS Mixer API OSS PCM API OSS Sequencer API

> They're right under the ALSA settings with make xconfig, and will provide the
>  OSS emulation you will need for OSS based apps. 

I did all that in the kernel, did make, copied bzImage to vmlinuz, did lilo 
and on boot I get the same error and no sound:

> Loading OSS compatibility modules for ALSA.
> FATAL: Module snd_pcm_oss not found.
> FATAL: Module snd_mixer_oss not found.

I will stop by that now playing with 2.6.7 and wait till slackware will come 
up with a correct version.

Regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
