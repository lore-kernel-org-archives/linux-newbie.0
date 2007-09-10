From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: mdelay
Date: Mon, 10 Sep 2007 22:55:33 +0530
Message-ID: <292693080709101025g7c6b3a1dnae531ececc5b597e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=i4P+TP/OMsofbo5zGvfVcA9jnjQD1IBoBfdv2LAInF8=;
        b=HCcvmiPtJRSpYuafeLINZElHGTxpbPtfJvk+8Z5Zcu9h5AsWid0diJIOtjoAntj9gTKZbCAWbzUEb8KYPOE+vBspKHuY+9yMe153JBtlJhga9ml8vaUFijxAviCoPy3oaAJmgdgFbYmxMTftB0gq0i96HsTvAuSESpE1L4f6NgM=
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I'm trying to understand an I2C algo driver for a platform that I'm
working on. In the source code where the driver is trying to read and
write certain data to my device, I frequently see code like this:

/*Initiate a transactionon on bus */

spin_lock_irq(&lock);
mdelay(1);
spin_unlock_irq(&lock);

/* Read status from device */

The delays like above are sprinkled quite often throughout the code,
whereever the driver is reading / writing to the hardware.

The driver does NOT have an interrupt handler, and the only reason
lock is used is to guard the mdelay statements throughout the code.

1) Can somebody help me understand what could be the use of disabling
interrupts while mdelay()?

2) AFAIK, mdelay is busy looping, right?

Thanks,

Dan.

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

