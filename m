From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: Copy-on-Write
Date: Wed, 6 Feb 2008 11:19:16 +0530
Message-ID: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=gkztNwDW4boYIjEITmIZwfdgae8aRTprJ3edW4lXoak=;
        b=rjJPYF413rzDtZ8G9mHy1GSIJA7CW88GPhg4sUO/lx0TWfOa6Kz4m2OU0uy1F4Qb67EvOZAVbvVtONeu/ICU4hVmFpPxcZEX22pEAtDzV6SEfbfS6WLq3Y5mXxrqEcVmIrKij5jlQFGKrc38OTP/H8T0L2hR3BJcUtjEdy7eoQA=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

I had read that the operating systems that use copy-on-write mechanism
for fork(), it is better if they deliberately allow the CHILD to run
first.

This would be better because in 99% of the cases child will call
exec() and the new address space will be allocated. Instead if the
parent is executes first, an unnecessary copy of the pages is made (if
parents writes) and later on when child executes, a fresh address
space is executed.

So in linux, is a child run first or the parent? Can we rely on this
information?

TIA

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
