From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Accessing static variable from outside
Date: Sat, 16 Jun 2007 07:38:07 +0530
Message-ID: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=rN9J/O7yEe95QOS5cvu7qS5f6fSeVKDKdge9cwnp7W1B8KCwfsiWk94P0moRDAW06ka80J7SscHVJdLAJ9gGLmctI66piT7uqzl7piku44ywKMPoDCY5VKTWdK2j/v1+XdpPUUpJCz/PLX6nkbv6MbAghJ/T1QLz09hlj71uVqc=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

I understand that this is off-topic, but still if some one has any ideas ...

I have a global variable that is defined static in an object file (say
1.o). Now I want to be able to get the value of this variable in
ANOTHER object file (say 2.o) without changing the source of 1.c.

Any ideas, anyone? I know that as per C, this is not possible. But may
be some clever hack?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
