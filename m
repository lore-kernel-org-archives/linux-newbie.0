From: Mark Hahn <hahn@physics.mcmaster.ca>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 21:22:06 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0306122120250.25379-100000@coffee.psychology.mcmaster.ca>
References: <3EE92606.9050203@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE92606.9050203@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stephen Samuel <samuel@bcgreen.com>
Cc: Lee Chin <leechin@mail.com>, linux-newbie@vger.kernel.org

> On my box, (a P3/450) usleep seems to have an overhead of about 10000usec
> and a minimum response time of about 20000

which is perfectly correct/expected.  
although "overhead" isn't quite right: instead, say
it has a resolution of 1/HZ and a minimum of 2/HZ.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
