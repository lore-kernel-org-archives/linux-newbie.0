From: Peter <heisspf@skyinet.net>
Subject: Re: Netconfig Fail
Date: Sun, 9 Oct 2005 11:29:06 -0400
Message-ID: <20051009112906.73070faa.heisspf@skyinet.net>
References: <20051008143336.4b907ad5.heisspf@skyinet.net>
	<4347ED53.50105@comarre.com>
	<20051009093319.584ebc9b.heisspf@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051009093319.584ebc9b.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Hi,

In slackware when I try to "/sbin/modprobe dmfe" I get the following error:

Quote
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: init_module: No such
device
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: Hint: insmod errors can be
caused by incorrect module parameters, including invalid IO or IRQ
parameters.
      You may find more information in syslog or the output from dmesg
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: insmod
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz failed
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz: insmod dmfe failed
Unquote

Locate dmfe shows that the module is present. I confirmed it in mc. There is no info in dmesg or syslog.

As for init_module there is only a man page in slackware as in Fedora which I do not understand.

# locate dmfe
/lib/modules/2.4.29/kernel/drivers/net/dmfe.o.gz
/usr/src/linux-2.4.29/drivers/net/.dmfe.o.flags
/usr/src/linux-2.4.29/drivers/net/dmfe.c
/usr/src/linux-2.4.29/drivers/net/dmfe.o
/usr/src/linux-2.4.29/Documentation/networking/dmfe.txt

How to resolve? Short of looking for an ethernet card slackware can read correctly.

Regards

Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
