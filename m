From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: Specify gcc version during make
Date: Thu, 10 Apr 2003 22:05:56 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030410220555.A10166@neutrino.particles.org>
References: <720FB032F37C0D45A11085D881B03368A2B80B@MBXSRV24.stu.nus.edu.sg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <720FB032F37C0D45A11085D881B03368A2B80B@MBXSRV24.stu.nus.edu.sg>; from g0202512@nus.edu.sg on Sat, Apr 05, 2003 at 05:35:52PM +0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eng Se-Hsieng <g0202512@nus.edu.sg>
Cc: linux-newbie@vger.kernel.org

On Sat, Apr 05, 2003 at 05:35:52PM +0800, Eng Se-Hsieng wrote:
> I am running gcc version 2.96 and need to install gcc version 3.2.
> 
> After this installation, how may I specify in make bzImage which
> compiler version to use?

Set the CC enviroment variable (in bash: export CC=/path/gcc).
Automake/autoconf checks it and I think the kernel too.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
