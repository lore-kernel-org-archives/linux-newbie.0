From: Ray Olszewski <ray@comarre.com>
Subject: Re: alsamixer Doesn't save volume settings
Date: Thu, 06 May 2004 23:36:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040506231100.01efccd0@celine>
References: <20040507043447.53651.qmail@web61008.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040507043447.53651.qmail@web61008.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:34 AM 5/7/2004 +0100, sumit kalra wrote:
>Hi,
>
>I am running ALSA-1.0.4 on RedHat 8 Linux (kernel
>2.4.18-14).
>
>I am trying to set the volume using "alsamixer" but
>everytime I reboot the machine, the volume gets reset
>to zero. I searched on google and got one solutions
>but it doesn't seem to work for me: Running "alsactl
>store" after increasing the volume - the command
>completes properly (with no errors) but on reboot, the
>volume setting are lost.

Odd. With normal operation of alsamixer, the most common changes are 
supposed to persist, even across a reboot ... even if you don't run alsactl 
manually.

Do any other changes you make to the settings (for example, turning various 
devices on and off, or setting the capture device) persist across a reboot, 
or are they too reset? (If you haven't tried changes other than volume, 
please do.)

After you run alsactl, does the config file (maybe /etc/sound.state, maybe 
/etc/asound.state) actually get created? Is it present (and unchanged - 
check the timestamp) after a reboot?

Is the "you" who runs alsactl root or an unprivileged userid? If the 
latter, that could be your problem; on my system, /etc/asound.state is 
owned by root and mode 644, so other userids cannot modify the file.

Are there any init scripts that affect alsa settings? Look for either alsa 
or alsasound in your init-script directory (I forget where RH puts this; my 
Debian systems use /etc/init.d) and see that both your default runlevel and 
the runlevel 6 (shutdown) call via symlinks whichever script is present 
(these scripts are supposed to run alsactl to save and restore settings).

Did you install a precompiled RPM, compile against your kernel from an RPM, 
or compile from non-RH source?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
