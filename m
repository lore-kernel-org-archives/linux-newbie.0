From: Rick Brown <rick.brown.3@gmail.com>
Subject: request_mem_region
Date: Tue, 20 Oct 2009 21:55:19 +0530
Message-ID: <7783925d0910200925x1c24d728sbe2d0e5da114e772@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=uNXwHtOiFU0iBuBzHv+OM6YhJ6Nc0kdn0Wox9YKbqTY=;
        b=VDsAUM205Fop6Uk3PN3Yr0bzFGbI3Zb0mX/KiGZMSlvIcOPYMOFCyGx2A5U1tT+rN+
         kKvOOlyT5hM9BcGAQ+y2TLD62gZ4J0dBQyZIximSNJlsfqH8+Yz2SK501miyvpkIR5x5
         cTMBFWIeKjPFc08Ir33kz7k9fDNpX7VQ7EKuM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

I'm trying to write a simple driver using some registers of my hardware.

Is a call to request_mem_region() advisory ("recommended") or
compulsory before I ioremap the memory?

In other words, if I don't use request_mem_region() before I start
using the memory; is my driver BOUND to fail, or it MAY fail?

Thanks,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
