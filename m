From: =?iso-8859-1?q?sumit=20kalra?= <i_am_sumit_kalra@yahoo.com>
Subject: Re: alsamixer Doesn't save volume settings
Date: Mon, 10 May 2004 05:44:21 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040510044421.43902.qmail@web61005.mail.yahoo.com>
References: <5.1.0.14.1.20040507062943.01f20198@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040507062943.01f20198@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Hi Ray / Theo. Sean Schulze,

I finally managed to get alsamixer to retain the
volume settings across reboots. The problem was that
"alsactl restore" was not being run at boot time. My
initial thought was that this script doesn't need to
be re-run on every boot - but I guess it does.

Thanks for your help,
Regards,
Sumit Kalra


 --- Ray Olszewski <ray@comarre.com> wrote: > At 10:27
AM 5/7/2004 +0100, sumit kalra wrote:
> [...]
> >The script /etc/init.d/alsasound is present but
> >/etc/rc6.d/ and /etc/rc3.d/ directories don't have
> >symlinks to it. I created these links by hand, but
> it
> >didn't help.
> >[...]
> >Interestingly, after rebooting if I run "alsactl
> >restore" before runnign "alsamixer", my previous
> >settings are restored. This means that the file
> >/etc/asound.state is correctly storing the settings
> >across reboots but alsamixer is somehow not
> re-reading
> >it after rebooting.
> 
> alsamixer is not supposed to re-read it. The
> alsasound init script runs 
> "alsactl restore" to handle this ... and includes
> what looks like decent 
> error handling, so it should log an error if it
> itself runs but cannot for 
> some reason run alsactl.  So make sure it is running
> properly on init.
> 
> >How do we get around this?
> 
> Is 3 *really* the default runlevel on RH systems?
> (Debian uses 2.)
> 
> Did you install alsactl as /usr/sbin/alsactl (that
> is where the alsasound 
> script expects to find it)?
> 
> Is the pseudo-directory /proc/asound present on your
> system (dieing 
> silently if it is not is the one error-reporting
> weakness I can see in 
> alsasound)?
> 
> 
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
http://www.linux-learn.org/faqs 


	
	
		
____________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
