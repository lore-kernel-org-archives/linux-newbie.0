From: "Randy.Dunlap" <rddunlap@osdl.org>
Subject: Re: OOPS in Kmalloc
Date: Thu, 24 Apr 2003 10:20:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030424102036.284ea84e.rddunlap@osdl.org>
References: <200304240813.NAA23499@WS0005.indiatimes.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304240813.NAA23499@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ramands <ramands@indiatimes.com>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org


| ; Hello,
| ; i am getting OOPS in Kmalloc .
| ;
| ; void **data;
| ; qset = 1000;
| ;
| ; dptr->data = kmalloc(qset * sizeof(char *), GFP_KERNEL);
| ;
| ; what could the possible the cause of the error
| ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
| As I am so fond of saying, it's almost always correct to indicate what
| kernel version one if referring to in a problem report.
| 
| Please decode the oops output and post it here.


I can't reproduce this problem on Linux 2.5.68.
However, I did initialize dptr before using it.  Did you?

You see, I can't tell if you did or not because you didn't post
a complete sample to reproduce the problem.

--
~Randy
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
