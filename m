From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: usleep
Date: Thu, 12 Jun 2003 18:23:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE92793.9020801@bcgreen.com>
References: <5.1.0.14.1.20030611162513.01fc8040@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030611162513.01fc8040@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: Lee Chin <leechin@mail.com>, hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

Ray Olszewski wrote:
 > At 05:55 PM 6/11/2003 -0500, Lee Chin wrote:

 > In fact, compiled on my system, the loop as written does introduce just
 > about a 1 second delay (30 iterations take 29 seconds,  timed crudely
 > with a wristwatch ... just right, since the initial printf() happens
 > before the first loop run).

Who needs a wristwatch when you're running on unix.

time the_command

will give you much more accurate timings than you could ever
get with a wristwatch.


-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
