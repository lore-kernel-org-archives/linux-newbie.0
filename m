From: =?iso-8859-1?q?sumit=20kalra?= <i_am_sumit_kalra@yahoo.com>
Subject: Re: alsamixer Doesn't save volume settings
Date: Fri, 7 May 2004 10:27:07 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040507092707.63689.qmail@web61006.mail.yahoo.com>
References: <5.1.0.14.1.20040506231100.01efccd0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040506231100.01efccd0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi Ray,

Thnaks for your reply. Please see my answers embedded
below.


 --- Ray Olszewski <ray@comarre.com> wrote: > At 05:34
AM 5/7/2004 +0100, sumit kalra wrote:
> >Hi,
> >
> >I am running ALSA-1.0.4 on RedHat 8 Linux (kernel
> >2.4.18-14).
> >
> >I am trying to set the volume using "alsamixer" but
> >everytime I reboot the machine, the volume gets
> reset
> >to zero. I searched on google and got one solutions
> >but it doesn't seem to work for me: Running
> "alsactl
> >store" after increasing the volume - the command
> >completes properly (with no errors) but on reboot,
> the
> >volume setting are lost.
>
> Odd. With normal operation of alsamixer, the most
> common changes are
> supposed to persist, even across a reboot ... even
> if you don't run alsactl
> manually.
>
> Do any other changes you make to the settings (for
> example, turning various
> devices on and off, or setting the capture device)
> persist across a reboot,
> or are they too reset? (If you haven't tried changes
> other than volume,
> please do.)

All the settings including the capture device state
get reset after a reboot.


>
> After you run alsactl, does the config file (maybe
> /etc/sound.state, maybe
> /etc/asound.state) actually get created? Is it
> present (and unchanged -
> check the timestamp) after a reboot?

Yes, on running "alsactl", the file
"/etc/asound.state" gets created which remains
unchanged across the reboot.


>
> Is the "you" who runs alsactl root or an
> unprivileged userid? If the
> latter, that could be your problem; on my system,
> /etc/asound.state is
> owned by root and mode 644, so other userids cannot
> modify the file.

The root is running "alsactl" command. The file, even
in my case, is owned by root and has mode 644.


>
> Are there any init scripts that affect alsa
> settings? Look for either alsa
> or alsasound in your init-script directory (I forget
> where RH puts this; my
> Debian systems use /etc/init.d) and see that both
> your default runlevel and
> the runlevel 6 (shutdown) call via symlinks
> whichever script is present
> (these scripts are supposed to run alsactl to save
> and restore settings).

The script /etc/init.d/alsasound is present but
/etc/rc6.d/ and /etc/rc3.d/ directories don't have
symlinks to it. I created these links by hand, but it
didn't help.


>
> Did you install a precompiled RPM, compile against
> your kernel from an RPM,
> or compile from non-RH source?

I got the alsa drivers, library and utilities from the
alsa project website (alsa-project.org) as tarred
zips. I compiled and installed them as root.


Interestingly, after rebooting if I run "alsactl
restore" before runnign "alsamixer", my previous
settings are restored. This means that the file
/etc/asound.state is correctly storing the settings
across reboots but alsamixer is somehow not re-reading
it after rebooting. How do we get around this?

Thanks and regards,
Sumit Kalra


	
	
		
____________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
