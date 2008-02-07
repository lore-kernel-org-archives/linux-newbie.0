From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: MIssed interrupts
Date: Thu, 7 Feb 2008 10:42:18 +0530
Message-ID: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=A4hUB975xekzacH7Kwpc9QPHMwvKKZXIO36xytSUhuI=;
        b=vWWJRR+MliGGSTrd8qGmTGGBaTTXAW3XKv+MHiR6k9IeAhhfRvhpktb80OQYgGCGlCduYuAbgqC7WGOFzWYPMiQqhOR61KKVM5dtpEvl0qnXK5faa9jun/38UJvEyzDjgoNzMLmHIhslCEaQJiq5S/ZYxuAGFaub6cfX4Es4RmU=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

If a particual IRQ line has been disabled (disable_irq()), what
happens if the device on that IRQ line generates interrupt? Does it
result in missed interrupt?

And in case of Uniprocessor machine, what happens if interrupts are
generated while spinlock_irq_save() etc?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
