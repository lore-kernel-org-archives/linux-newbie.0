From: Dominique Sidiropoulos <ksidirop@ucnet.uoc.gr>
Subject: Re: alsamixer Doesn't save volume settings
Date: Thu, 13 May 2004 12:11:14 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40A33BB2.2060309@ucnet.uoc.gr>
References: <20040507043447.53651.qmail@web61008.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: sumit kalra <i_am_sumit_kalra@yahoo.com>
Cc: linux-newbie@vger.kernel.org

sumit kalra wrote:

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
>
>Any help is appreciated,
>TIA
>Sumit Kalra
>
>
>	
>	
>		
>____________________________________________________________
>Yahoo! Messenger - Communicate instantly..."Ping" 
>your friends today! Download Messenger Now 
>http://uk.messenger.yahoo.com/download/index.html
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>  
>
You should invoke somewhere (/etc/rc.local I think - but not sure) 
`alsactl restore' or something too.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
