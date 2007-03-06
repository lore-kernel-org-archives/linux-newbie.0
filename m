From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Debugging kernel with KGDB
Date: Tue, 6 Mar 2007 22:37:30 +0530
Message-ID: <292693080703060907u2d6c6710rd26c26f0a78feca2@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=EFeHXG0j0XgMWVoJmLwYTtP8n9Eh/Sfrf8HX2ctxhLN94czuQN+Xennnw7W3vNEbsf9hxOELhxW4jXw2qFps4m+oxvMUud5guAKkxfYCB+fnhfAPOngI8SeHf2cKqjxrwfrW4kz6ipfTgqZZ8pFB63k1HnMXOtmP1FG01iNLk2k=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi list,

I am debugging linux kernel (2.6.15) remotely using gdb and want to
debug an area that involves synchronization / timing between two
kernel threads.

I was wondering if it is possible to debug multiple kernel threads at
the same time by manually switching between the two? For instance can
I create the following scenario using the gdb debugger:

1) kernel thread 1 hits break point 1
2) At this point, I want kernel thread 2 to run till break point 2.

I hope I'm clear enough?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
