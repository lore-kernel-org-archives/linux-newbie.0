From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: GNU make: Where is the default database?
Date: Fri, 21 Feb 2003 22:28:38 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030221222838.A20788@neutrino.particles.org>
References: <b35st6$mbs$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b35st6$mbs$1@main.gmane.org>; from jamie_risk@yahoo.ca on Fri, Feb 21, 2003 at 01:59:22PM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jamie Risk <jamie_risk@yahoo.ca>
Cc: linux-newbie@vger.kernel.org

On Fri, Feb 21, 2003 at 01:59:22PM -0500, Jamie Risk wrote:
> Where's the source database for gnu make? I can view it with
> "make -p -f/dev/null" which is, useful, but I wish to edit it.

Redefine your shell's enviroment variables. For bash use export,
for csh use setenv.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
