From: "Eve Atley" <eatley@wow-corp.com>
Subject: RE: Retrieving deleted files
Date: Wed, 7 Apr 2004 17:06:23 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPEEGLCJAA.eatley@wow-corp.com>
References: <5.1.0.14.1.20040407132750.01efa2b0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040407132750.01efa2b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org


Thanks so much for your help, Ray.

I have tried the instructions at:
http://recover.sourceforge.net/unix/
(one of the first things I did try)
...and I got a whole lot of garbage spit back to my screen; so much so, I
had to quit.

I am attempting to do something along these lines:

	grep -a -B10000 -A0 "wowerpresumes" /dev/hdfb

...and since I'm not sure what to put for B and A, I may be doing something
wrong here. I don't recall how large the directory was 'before' things were
deleted.

- Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
