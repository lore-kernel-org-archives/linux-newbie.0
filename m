From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: alsamixer Doesn't save volume settings
Date: Sat, 8 May 2004 00:09:23 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040507220923.GA14047@teamfinders.org>
References: <20040507043447.53651.qmail@web61008.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040507043447.53651.qmail@web61008.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Have you tried adding 'alsactl restore' in your rc.local on boot?

On Fri, May 07, 2004 at 05:34:47AM +0100, sumit kalra hunted and pecked out:
> Hi,
> 
> I am running ALSA-1.0.4 on RedHat 8 Linux (kernel
> 2.4.18-14). 
> 
> I am trying to set the volume using "alsamixer" but
> everytime I reboot the machine, the volume gets reset
> to zero. I searched on google and got one solutions
> but it doesn't seem to work for me: Running "alsactl
> store" after increasing the volume - the command
> completes properly (with no errors) but on reboot, the
> volume setting are lost.
> 
> Any help is appreciated,
> TIA
> Sumit Kalra
> 
> 
> 	
> 	
> 		
> ____________________________________________________________
> Yahoo! Messenger - Communicate instantly..."Ping" 
> your friends today! Download Messenger Now 
> http://uk.messenger.yahoo.com/download/index.html
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
