From: Ray Olszewski <ray@comarre.com>
Subject: Re: alsamixer Doesn't save volume settings
Date: Fri, 07 May 2004 06:36:59 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040507062943.01f20198@celine>
References: <5.1.0.14.1.20040506231100.01efccd0@celine> <20040507092707.63689.qmail@web61006.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040507092707.63689.qmail@web61006.mail.yahoo.com>
References: <5.1.0.14.1.20040506231100.01efccd0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:27 AM 5/7/2004 +0100, sumit kalra wrote:
[...]
>The script /etc/init.d/alsasound is present but
>/etc/rc6.d/ and /etc/rc3.d/ directories don't have
>symlinks to it. I created these links by hand, but it
>didn't help.
>[...]
>Interestingly, after rebooting if I run "alsactl
>restore" before runnign "alsamixer", my previous
>settings are restored. This means that the file
>/etc/asound.state is correctly storing the settings
>across reboots but alsamixer is somehow not re-reading
>it after rebooting.

alsamixer is not supposed to re-read it. The alsasound init script runs 
"alsactl restore" to handle this ... and includes what looks like decent 
error handling, so it should log an error if it itself runs but cannot for 
some reason run alsactl.  So make sure it is running properly on init.

>How do we get around this?

Is 3 *really* the default runlevel on RH systems? (Debian uses 2.)

Did you install alsactl as /usr/sbin/alsactl (that is where the alsasound 
script expects to find it)?

Is the pseudo-directory /proc/asound present on your system (dieing 
silently if it is not is the one error-reporting weakness I can see in 
alsasound)?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
