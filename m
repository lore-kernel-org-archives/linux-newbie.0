From: Ray Olszewski <ray@comarre.com>
Subject: Re: malloc and free
Date: Fri, 24 Dec 2004 10:53:05 -0800
Message-ID: <5.1.0.14.1.20041224104634.01f589e0@celine>
References: <20041224183956.11788.qmail@web52909.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041224183956.11788.qmail@web52909.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: newbie <linux-newbie@vger.kernel.org>

At 06:39 PM 12/24/2004 +0000, Ankit Jain wrote:
>hi
>
>routine xyz uses malloc and free functions. it gives
>accurate and correct result if called once.
>
>but if the function is called in a loop N number of
>times then probably it gives segmentation fault.
>
>what is the reason?  can any body guess or test code
>is needed?


Probably test code is needed. But if you want a guess ... the "free" call 
contains an error that leads to a memory leak. If you call the routine 
once, that's no big deal, and the routine will appear to return "accurate 
and correct result". But if you call it a lot, memory consumption goes up 
past the point where the kernel can support it and a segfault results.

That's just a shot in the dark, though ... and even it assumes that N is a 
big number (thousands at least), not 10 or 20. Your use of "probably" does 
make it an appealing guess, though.

Really, though, you are posing the question, "What can go wrong with 
malloc() and free()?" Put that way, it is obvious that it is too vagure for 
a troubleshooting list. Let's see the code, as well as whatever is calling 
the code.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
