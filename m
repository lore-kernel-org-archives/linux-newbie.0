From: Peter <heisspf@skyinet.net>
Subject: Re: sound problem (was: [no subject])
Date: Sat, 07 Feb 2004 15:48:15 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040207074815.935E51C945@heisspf>
References: <5.1.0.14.1.20040206093637.01fa5758@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 06 Feb 2004 09:58:33 PST." 
 <5.1.0.14.1.20040206093637.01fa5758@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks! I made it, I have now normal sound in Slackware 9.1

First I did make modules, then make modules_install after which I had no more 
sound. Doing /sbin/insmod soundcore it spit back no such file. Then I found 
that there is no .../drivers/sound folder. I copied it over from RedHat9. Did 
insmod soundcore, ac97_codec, via82cxxx_audio and all sounded normally. Then I 
put those insmod commands into rc.local. Using modprobe I get error no such 
file soundcore etc.

I do not know if this is a professional solution, but it works.

Now to some of your questions:

In RedHat xconfig Sound has only one setting, sound card support yes. That is 
what I put in Slackware and put 'no' on all the other settings which were 
there. When you mentioned OSS I put that on 'yes' in SW.

ray@comarre.com said:
> Your problem in Slackware may simply be that you have not used amixer
> or alsamixer to configure the sound modules correctly

I tried tried all kinds of different settings on alsamixer before I went on 
the list. According to Richard of pa3gcu my problem is well know of ALSA 
drivers.

ray@comarre.com said:
> though we customarily treat all 2.4.22 (for example)  kernel sources
> as the same in these discussions, that is not exactly true

As I mentioned I took the SW kernel 2.4.22 from the Slackware Installation 
Disk and installed it in RH9 and even in RH7.3. Therefore, I assume that they 
are the same.

In RH7.3 I had the kernel 2.4.18-7 and could open siag office. When I 
installed RH9.0 with kernel 2.4.18-9 siag office would not open; don't ask me 
why and by now I forgot the error message. Since siag office opens in SW9.1 
with kernel 2.4.22 I put that kernel into RH9.0 and siag office runs again.

Thanks to your help and patience I am almost ready to fully switch to SW9.1. 
Sorry for my sometimes not too professional descriptions of facts.

Regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
