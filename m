From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Noflushd usage
Date: Thu, 1 Apr 2004 21:30:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404012130.36792.pa3gcu@zeelandnet.nl>
References: <406BA04F.3060503@hopper.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <406BA04F.3060503@hopper.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Joshua Rogers <joshuarogers@hopper.net>, linux-newbie@vger.kernel.org

On Thursday 01 April 2004 06:53, Joshua Rogers wrote:
> How can I (or can I not) make noflushd turn off the second hard drive
> after about 15 minutes?

Why use such a program when there is a linux command called 'hdparm'

man hdparm

Should explain, or 

/usr/sbin/hdparm -Sxx /dev/hdb

Where -Sxx is -S30 or whatever you choose for your noisy drive.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
