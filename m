From: "Gosselin, Mark" <gosselinm@netscout.com>
Subject: Process table dump
Date: Thu, 26 Feb 2004 10:20:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <6CE6A442029B3347890ED9FCA94FAE0701EEAD38@nsxmail.netscout.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linux Newbie (E-mail)" <linux-newbie@vger.kernel.org>

Hi Everyone,

I'm working on a problem we're seeing here running a program called 'snort'. It appears that when
the is running, it starts to consume large amounts of memory. When the process is killed, the
memory, which should be released, is not. My theory is that the process still hangs around in
some process table or soething, although it does not show as a zombie process.

Can someone tell me the best way to dump any process table so I can verify that this is the case??

Thanks,
Mark Gosselin
NetScout Systems
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
