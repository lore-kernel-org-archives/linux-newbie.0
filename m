From: Rick Brown <rick.brown.3@gmail.com>
Subject: IRQF_TRIGGER_* flags
Date: Thu, 29 Oct 2009 22:24:13 +0530
Message-ID: <7783925d0910290954o1138f657w10c5e9900cdaceba@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=QdzADRMjfqsW4gshaqhY0/gzoolaGx9Dxp7TYgdqJOA=;
        b=rKgVLlIbUckT2T+9xsC78TamUDaTdH3iQ3VKfzlHYEAoRTgVTrhhXzvgkahWtbQVcm
         lKVpR58UdLCL+9+VEJ36dImuoaP+pzepNEP/YYFYFp6tDTtXjveUbKItRwZPFkZzBN/n
         vg9/C9lr8ZsqEINofrJDZkA2A8/qnWJPRvCos=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

This is regarding the IRQF_TRIGGER_* macros (that can be passed in
flags in request_irq()) I came acrosss while browsing the code:

/*
 * These correspond to the IORESOURCE_IRQ_* defines in
 * linux/ioport.h to select the interrupt line behaviour.  When
 * requesting an interrupt without specifying a IRQF_TRIGGER, the
 * setting should be assumed to be "as already configured", which
 * may be as per machine or firmware initialisation.
 */
#define IRQF_TRIGGER_NONE       0x00000000
#define IRQF_TRIGGER_RISING     0x00000001
#define IRQF_TRIGGER_FALLING    0x00000002
#define IRQF_TRIGGER_HIGH       0x00000004
#define IRQF_TRIGGER_LOW        0x00000008

1) I assume that the above flags can be used to configure whether the
interrupt is edge-triggered or level-triggered and further more if it
is high / low (for level triggered), or rising / falling (for edge
triggered). What confuses me though is that as per my understanding,
this configuration must alrteady have been done by the interrupt
handler code at the system initialization time. So these flags provide
a way to alter that behaviour (over-ride the default) by the device
driver? Isn't that drastic considering that an interrupt may be shared
by drivers?

2) Secondly, should / are driver aware of whether the line is edge
trigggered / level triggered. Doesn't this responsibility more
appropriately belong to the interrupt handler code? Can some one help
me a practical situation where we could use these flags?

3) Finally and most importantly, does my driver need to do anything
differently depending upon whether the IRQ line is edge triggered or
level triggered? And what does the kernel do differently for both the
cases?

TIA,

Rick.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
