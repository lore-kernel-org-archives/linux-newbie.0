From: Carl <carl@anexia.co.uk>
Subject: Re: Installing same o/s across different hardware
Date: Thu, 11 Sep 2003 10:52:21 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.2.1.1.0.20030911104346.01c55818@pop3.demon.co.uk>
References: <5.2.1.1.0.20030909164900.049e0ab8@interzone.anexia.co.uk> <MSGID_1=3a3613=2f52_03c3a120_270.lists.li_03C3A120@fidonet
 .org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <MSGID_1=3a3613=2f52_03c3a120_270.lists.li_03C3A120@fidonet
 .org>
References: <5.2.1.1.0.20030909164900.049e0ab8@interzone.anexia.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 20:02 09/09/2003 -0500, Chip Hearn wrote:
>Originally to: Carl
>
>  Re: Installing same o/s across different hardware
>  By: Carl to All on Tue Sep 09 2003 06:15 pm
>
> > /etc/modules.conf has aliases for the megaraid.o and aic79xx.o modules that 
> > not required for this
> > system but just commenting them out does nothing.
> > Anybody know what is required to stop the kernel looking for these devices a
> > hence get rid of the errors ? 
>
>It sounds like you built the kernel with the megaraid and aic79xx built in...
>so, removing the "Modules" won't remove it trying to detect them.  The only way
>to get rid of these would be to rebuild the kernel... But.. Lemme tell you
>this... the error your getting above... is nothing... it just can't find the
>device and it moves on... Its not really an error... Does your system operate
>correctly, are their other problems?  My suggestion to you... weight the factor
>of rebuilding the kernel, possibly missing something else, like the mouse, or
>somesuch.. having to rebuild it again... etc..   or ignoring those missing
>devices... its not hurting anything... :)
>
> > Namely an adaptec message that i can't catch as it is too quick and the 
> > following
> > which i can get from /var/log/boot.log:
>
>I have a bit of information... to be able to see what the message is.. you can
>use dmesg | more  the entire boot up process is stored, and you can view it any
>time you like.  :)
>
>hope that helps.
No operational problems with the machine as far as i can tell.

Already checked dmesg and found nothing.

Neither the megaraid or adaptec modules are built in to the kernel.

Taken from my kernel .config:

CONFIG_SCSI_AIC79XX=m
CONFIG_AIC79XX_CMDS_PER_DEVICE=253
CONFIG_AIC79XX_RESET_DELAY_MS=15000

and

CONFIG_SCSI_MEGARAID=m

Could it be initrd doing it ? It was built with the hardware in place.

--
Carl 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
