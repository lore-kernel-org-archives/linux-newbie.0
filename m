From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: Compiler flags, kernel-complie
Date: Sat, 31 May 2003 22:16:07 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3ED90D87.7050507@vip.cybercity.dk>
References: <3ED902D8.2030907@vip.cybercity.dk> <20030531195356.GA24659@cam.ac.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030531195356.GA24659@cam.ac.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Steven Smith <sos22@cam.ac.uk>
Cc: linux-newbie@vger.kernel.org

Steven Smith wrote:
>>I have set the enviroment variables $CFLAGS and $CXXFLAGS to:
>>
>>-O2 -march=athlon-xp
>>
>>Now my question is will this effect my kernel-compile?
> 
> Shouldn't do; the kernel doesn't normally inherit CFLAGS and friends
> from the environment.  The correct way to do this is through the
> ``Processor type'' part of make {x,menu}config.
Well it seems like that $CFLAGS is overwriten in 
'/usr/src/linux/Makefiles' og exported.
But when I compile kernel it compiles with '-march=athlon', how do I 
change this?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
