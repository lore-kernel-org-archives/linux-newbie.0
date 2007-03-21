From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: need for mmap?
Date: Wed, 21 Mar 2007 09:37:42 +0530
Message-ID: <292693080703202107r7c8f914ch48f68abd8bf7d95d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=EoRRFr6oM2Py60KBIdsp/bbHCwvZudwMIYqtiBURwexoUSyhZNzx4ulB6u6r+MqnYDbywb6WMk1hl5nxMKa3bIIQswFD9NfKy6CnYWfaN1qsFtGq2tw+3ixmCqsIsZVvgK1pYwtRTkYyEDItF4EgUP5hXQmI9FAmsxdQ1cp8P4A=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

Hi list,

I'm a newbie, and I just read about the mmap system call. I have a
very basic confusion regarding why would a driver ever want to
implement mmap.

1) The purpose of mmap is to map the device memory to user space
programs, right? Isn't that alreay available via /dev/mem? The
interested userspace programs can directly mmap (the required offset
in) /dev/mem into their address space, and the task is done? No?

2) Is it that mmapping /dev/mem works only for memory (RAM)? Are all
physical addresses not available via /dev/mem?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
