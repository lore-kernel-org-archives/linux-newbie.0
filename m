From: joy <gracecott@sancharnet.in>
Subject: Re: kernel compilation problem
Date: Wed, 24 Dec 2003 10:15:37 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FE919F1.6010600@sancharnet.in>
References: <5.1.0.14.1.20031223084227.01f4cec0@celine>
Reply-To: gracecott@sancharnet.in, gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>, PachecoJ@Npt.NUWC.Navy.Mil

Sorry to find a trivial answer to the Q. The settings were alright .
thanks a lot , Jason and Ray, All I needed to do was to to copy the
System.map as this Kernel does not use the other two System.map(s)  in
/boot (they are for kernels compiled with diff options).
But still ,I would like to get rid of the irritating
              spurious 8259A interrupt : IRQ7
message I get on Boottime.
I run an athlon 2400+ , with a biostar nforce2 mobo and the normal
peripherals, nothing out of the ordinary.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
