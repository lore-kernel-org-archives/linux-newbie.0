From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Make command line options
Date: Fri, 26 Apr 2002 01:19:49 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020426011949.D1134@neutrino.particles.org>
References: <3CC8036F.3020202@keyed-upsoftware.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3CC8036F.3020202@keyed-upsoftware.com>; from dstroupe@keyed-upsoftware.com on Thu, Apr 25, 2002 at 08:23:59AM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Stroupe <dstroupe@keyed-upsoftware.com>
Cc: linux-newbie@vger.kernel.org

On Thu, Apr 25, 2002 at 08:23:59AM -0500, David Stroupe wrote:

> Is there a command line option for make that will force all files to be 
> recompiled and re linked?  I thought that -W would do that, but I can 
> not seem to make it work.

If your Makefile is correctly written, then a make clean; make all should
be enough.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
