From: Chris Rose <offline@shaw.ca>
Subject: Re: Marco's failed message: Help on scripting
Date: Sun, 28 Apr 2002 11:19:10 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20020428111445.00b26ef0@shawmail.ed.shawcable.net>
References: <20020428085906.GB361@cam.ac.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020428165147.1928.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

At 06:51 PM 28/04/2002 +0200, Marco Calistri wrote:
>I thank all of you:Ray,Steven,Chris...the mistery of my not accepted message
>still remains though.
>
>About the script example:
>all ok and thank you,but how can I set a variable so that I can use
>it with different file names and not just with jnos*.p?
>
>$f= ls -l...???

Any expression that ls can accept will work - so if you want any given 
pattern, just test for it with ls on its own.  You can also use any whole 
directory, obviously.  i'm not 100% sure what you're trying to accomplish 
with the script, so it's hard to say.

And bear in mind that the suggestion i gave you works as a command line in 
and of itself.  No script, per se, is necessary - though it's not hard to 
make one of it.


Chris Rose
==========
1952 - 2001 = 42


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
