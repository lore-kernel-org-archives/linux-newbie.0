From: Ray Olszewski <ray@comarre.com>
Subject: Re: browser errors
Date: Sat, 03 Aug 2002 13:20:53 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020803131452.02184790@celine>
References: <200208031427.17742.korosi@eunet.yu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208031427.17742.korosi@eunet.yu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosi@eunet.yu>, linux-newbie@vger.kernel.org

 From your report, it is difficult to know what is really happening. I 
would **guess**, though, that fonts are not your real problem.

What are the basics of your hardware? Especially, how much RAM does your 
system have, and how big is your swap partition? Please remember that I am 
only guessing here, but I noted your comment that "HDD light is working 
(lighting for some time)". This makes me wonder if the system is trying to 
use the swap partition and running into trouble (or perhaps just getting 
VERY slow -- how long do you wait for the system to recover before 
rebooting?). Browsers tend to be memory hogs, so you might see this 
behavior only when running one.

If that is not it ... what are the last few things the logs contain prior 
to a reboot out of this failure?

At 08:00 PM 8/3/02 +0200, Korosi Akos wrote:
>Hi!
>
>I posted a mail not very long ago about my xfs problem.
>Unfortunately nobody answered about this problem.
>
>In the meantime I tried to search for a solution, but with no success.
>
>I try to write down here everything that I know about this porblem:
[details deleted]


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
