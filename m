From: "George Kumar" <grgkumar4@gmail.com>
Subject: Does cr3 register change when a new process is scheduled ?
Date: Wed, 14 Jan 2009 18:33:20 -0800
Message-ID: <5f695cd0901141833i61be35eemc906f1c70ff9822b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=B7meNzQ441ambIQczgWTYXoAjVMD2NJqr86Dr6r7z7M=;
        b=cXd2NPtgQvEDebMVACUl1GlcFNpKMo7N1B9dNWR12RtKdAspK5UZeI3uXD+C9mupky
         G5g7t+6hyoyWrv+NJiT9pFGVK3shPCjLYK9HQzh1rUNh9T1VxfFJYFnSY1WsgEcMPer+
         58ZY9SjO5hZZTs3UIAiXG4tIwROFWpd6czFYs=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Let us suppose we are talking about a uni processor system. Do we
change cr3 page directory control register when a new process is
scheduled to run on the CPU.

thanks.
George
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
