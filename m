From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: recovering files after rm
Date: Mon, 31 Mar 2003 11:54:00 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030331115400.A1195@neutrino.particles.org>
References: <20030331083633.29504.qmail@webmail35.rediffmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030331083633.29504.qmail@webmail35.rediffmail.com>; from mishra_nn@rediffmail.com on Mon, Mar 31, 2003 at 08:36:33AM -0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: n mishra <mishra_nn@rediffmail.com>
Cc: linux-newbie@vger.kernel.org

On Mon, Mar 31, 2003 at 08:36:33AM -0000, n  mishra wrote:
> This probably sounds really silly but could someone please tell me 
> if there is any way of recovering files which have been deleted 
> using the rm command.

In general: there is no way.

If you are lucky, you can dump using dd your partition's data in a file
and then search in the file for the missing data, but again this is not
trivial and doesn't work 100%.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
