From: chuck gelm <chuck@gelm.net>
Subject: Re: Netconfig Fail
Date: Sun, 09 Oct 2005 14:00:21 -0400
Message-ID: <43495AB5.1070705@gelm.net>
References: <20051008143336.4b907ad5.heisspf@skyinet.net>	<4347ED53.50105@comarre.com>	<20051009093319.584ebc9b.heisspf@skyinet.net> <20051009112906.73070faa.heisspf@skyinet.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051009112906.73070faa.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> In slackware when I try to "/sbin/modprobe dmfe" I get the following error:
> 
> Quote
> /lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: init_module: No such
> device
> /lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: Hint: insmod errors can be
> caused by incorrect module parameters, including invalid IO or IRQ
> parameters.
>       You may find more information in syslog or the output from dmesg
> /lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: insmod
> /lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz failed
> /lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: insmod dmfe failed
> Unquote

  Hi, Peter:

  Yep, it said 'no such device' not 'no such module', so your kernel
doesn't find the device.  Review:
http://www.linuxquestions.org/questions/history/113041
"... try another slack kernel like bareacpi.i or similar
  (especially on a laptop)..."

  You could contact the dmfe module author
(/usr/src/linux/Documentation/networking/dmfe.txt)
or report a 'bug' to Slackware.

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
