From: Ray Olszewski <ray@comarre.com>
Subject: Re: Netscape6.2/Slack8.1 Problem??
Date: Thu, 01 May 2003 09:06:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030501090116.01ea5780@celine>
References: <5.1.0.14.1.20030430101045.01f89a18@celine>
 <20030430130258.A152@lnx2.w8mch.ampr.org>
 <5.1.0.14.1.20030430101045.01f89a18@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030501113320.B165@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

OK. This response pretty much eliminates RAM/swap as a possible cause.

I also asked about CPU use. That's the line in "top", near the top of the 
display, that looks like this:

Cpu(s):  30.6% user,   2.0% system,   0.0% nice,  67.4% idle

See if running the problem version of Netscape pushes your idle time to 0% 
or nearly that.

But this too seems less likely, now that I understand that the problem is 
specific to a *particular* action on the Netscape you are running. I'd be 
looking for an app-specific bug, I think. For that you'll need help from 
someone shose setup is closer to yours than mine is.

Sorry I wasn't able to help.

At 11:33 AM 5/1/2003 -0400, Hal MacArgle wrote:
[...]


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
