From: Antino Kim <antinokim@gmail.com>
Subject: How do I run my code just *before* the context switch now that task 
	queue is gone?
Date: Mon, 7 Jun 2010 01:18:19 -0400
Message-ID: <AANLkTimtvJeUcKmRC9Sok6H_9dnPMJgh2U0hPe4Eg1sL@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=Cwcz2cJZFv1hgY8vcQwDUF1YohFT8TNW1E0GHXZaERA=;
        b=YH4diSqRvvhiyflFqFHD8/lYhX60fXl/e14J+Dz1P9i5MTGSKHELvq8i1fW+A4hj62
         3kerVPGYDhES5A9LgUf+60qKxpRX5501lcwWZleRTtLKGTkpP8scojEG6/aZGJEsDwxk
         hYTm1QtFyPtw6g8aNV90T4uZIwd516aSm1wTM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

Hello everyone,

So, I need a way to=A0run my code just *before* the context switch. Old
task queue (tq_scheduler) in kernel 2.2 provided an easy way of doing
so. However, that feature is now defunct... Workqueues and Tasklets
that seem to have replaced task queue do not provide the exact feature
I need. Does anyone have any idea?

-Antino
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
