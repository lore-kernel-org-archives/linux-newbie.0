From: CaT <cat@zip.com.au>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 09:21:46 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030611232146.GA779@zip.com.au>
References: <20030611225502.29651.qmail@mail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030611225502.29651.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

On Wed, Jun 11, 2003 at 05:55:02PM -0500, Lee Chin wrote:
> I would think the following code would wait for 1 second each itteration
> before printing hello, but it waits way too long.  Replacing the for
> loop body with a usleep(1000000) works great... what am I missing here?

usleep = micro sleep = sleep in 1/1000000 second incrememnts.

-- 
Martin's distress was in contrast to the bitter satisfaction of some
of his fellow marines as they surveyed the scene. "The Iraqis are sick
people and we are the chemotherapy," said Corporal Ryan Dupre. "I am
starting to hate this country. Wait till I get hold of a friggin' Iraqi.
No, I won't get hold of one. I'll just kill him."
	- http://www.informationclearinghouse.info/article2479.htm
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
