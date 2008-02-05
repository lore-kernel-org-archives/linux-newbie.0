From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: TLB Question
Date: Tue, 5 Feb 2008 11:34:09 +0530
Message-ID: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=57shmI/jmVyCGAwnt7LprBNn14xJvGVmi50imgOpGm4=;
        b=BHdH1SKFW6Wh6v9A1fSrmDyoJm2izRjJrus/rHmB8QyQnt510jXTsrZJhCLdhanjQQVC2alfZeubb9HA4SbkYJwrbvTc4uHpyxytZZmL5Z9e0sY8A+fgACglHovk+tlnu9SZp3NZfzkeCwkW8kM1bHvEtussFsJP26iFSbLHk28=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

I'm trying to understand the MMU operations & am wondering where is
the kernel code where the kernel interfaces with the this piece of
hardware?

Can some one help me in understanding that what all are the
responsibilities of the kernel, and what is it the hardware takes care
of automatically? E.g. who fills, flushes & refills the TLB entries?
What all initializations need to be performed by kernel (And where is
the code?)

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
