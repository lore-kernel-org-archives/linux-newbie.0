From: Ray Olszewski <ray@comarre.com>
Subject: Re: Hard disk repartitioning
Date: Wed, 02 Apr 2003 23:09:16 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030402230311.01ef9bb0@celine>
References: <20030403041632.54806.qmail@web20711.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030403041632.54806.qmail@web20711.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Arthur Kng <arthur_kng@yahoo.com>, linux-newbie@vger.kernel.org

While you got a lot of feedback on the disk repartitioning question, 
responses to your other question seemed cursory.

At 08:16 PM 4/2/2003 -0800, Arthur Kng wrote:
[...]
>    also i have 128MB RAM. so what should be the size
>of my Swap partition?


Anywhere between 0 and 256 MB, depending on things you haven't told us. 
Relative to real RAM, swap is very slow, and you'll want to avoid using it 
for anything that is time sensitive. So to know whether you need swap, you 
need to think about what actual uses you will be making of the system, so 
you can figure out what is appropriate. And honestly, these days I find RAM 
cheap enough that if I see a system that actually makes use of its swap 
partition, I just put more RAM in it.

In practice, I've run systems with as little as 64 MB of RAM with no swap, 
and I no longer ever bother with swap on systems that have 256 MB or more 
of real RAM.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
