From: Peter <heisspf@skyinet.net>
Subject: Re: sound problem (was: [no subject])
Date: Fri, 06 Feb 2004 14:59:11 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040206065912.2EB3B1C946@heisspf>
References: <5.1.0.14.1.20040205081546.01f9a858@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 05 Feb 2004 08:36:19 PST." 
 <5.1.0.14.1.20040205081546.01f9a858@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Thanks!

ray@comarre.com said:
> First a preliminary suggestion: Please use Subject: lines in your mail
> to  this list. Since the lack of a Subject: line is a characteristic
> of SPAM  and virus messages, I usually discard unread any such
> messages ... I only  read this one because I happened to recognize
> your e-mail address.

Sorry for that. My ISP was down for 2 days. Now that I can connect again I 
have problems sending mail with my mailer exmh, the mail just goes into the 
queue and sits there. I then switch to sylpheed which integrates the exmh 
folders and forward the mail by which process I overlooked that the Subject: 
was left out.

ray@comarre.com said:
> First, if the two setups -- Slackware and Red Hat -- use the same
> kernel  and the same modules.conf, why do they end up loading
> different modules?  The init scripts must be doing something quite
> different.

ray@comarre.com said:
> for that matter, what "in sound" means

/usr/src/linux make xconfig, then klick on sound

Well, when I had installed RH9.0 I could not open siam office which I could 
with SW9.1. So I installed the SW 2.4.22 kernel in RH and siam office opened. 
Having the distorted sound in SW to which distro I am planning to migrate 
eventually I put the same sound settings in SW found in RH using make xconfig 
sound. Then I copied the /etc/modules.conf of RH to SW /etc/. That did not 
change anuthing in SW as for distorted sound.

ray@comarre.com said:
> Third, what sound card (or mobo sound) is involved?

The motherboard is P4VMM2 ,
the chipset P4M266/A Northbridge and VT8235 Southbridge,
Audio - AC'97 Audio Codec on the mobo.
Celeron 4 processor


ray@comarre.com said:
> Finally, what use is producing the "very annoying distorted sound" and
> what  else can you tell us about its characteristics?

All the .wav files I use for sounds such as opening, closing, iconify etc. 
windows.
Playing a video CD is plain impossible whereas playing a music CD has no 
distortion.
The distortion is a continuous scratching and a tapering-off really annoying 
sound.

I went now back into SW9.1 did a make xconfig sound and klicked yes for OSS.
Now the tapering-off sound is gone, however, the annoying scratch persists. It 
is like an electrical static sound only harder on both speakers. I check the 
wires, the plug, changed speakers; they must be all fine since there is now 
such scratch with the RH9.0 sound system.

Hope some solution can be found.

Regards



-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
