From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: scripting the "rec" function for a fixed time.
Date: Tue, 25 Feb 2003 09:01:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030225090102.A28473@neutrino.particles.org>
References: <1046131264.10885.28.camel@smeagle>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1046131264.10885.28.camel@smeagle>; from p.howell74@rcn.com on Mon, Feb 24, 2003 at 07:01:03PM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Howell <p.howell74@rcn.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Feb 24, 2003 at 07:01:03PM -0500, Peter Howell wrote:
> I would like to be able to run the rec command unattended.  Right now
> when executed, it will record sound until I hit C-c.  I would really
> like to be able to right a script which will execute "rec ...", then
> wait a specified period of time, then pass the C-c to it.  Or is there a
> simpler way?

It's morning here and in 5mins I'm going to have exams in Quantum Mechanics
so my reply will be quite theoritical. :-)

The solution may not be the optimal: just use at to kill rec after the 
specified time. Read the man page of at(1) for the details.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
