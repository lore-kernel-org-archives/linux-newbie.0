From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Lexar Jump Drive & Linux??
Date: Sat, 25 Mar 2006 09:17:38 -0500
Message-ID: <20060325141738.GA1239@lnx2.kvinet.com>
References: <20060324213842.GA1272@lnx2.kvinet.com> <200603242044.14981.david@fierbaugh.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200603242044.14981.david@fierbaugh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Fierbaugh <david@fierbaugh.org>
Cc: linux-newbie@vger.kernel.org

On 03-24, David Fierbaugh wrote:
> I second what has been said about using them with vfat file system. I have a 
> 16Mb that must be at least 4 1/2 years old. It's still going fine.
> 
> Most people keep these as vfat, unless there's a really god reason not to 
> (like using with NSLU2 hacked to run off a flash drive, now that's fun.)
> 
> Flash drives are EXTRAORDINARILY resilient. I've seen photos off of a flash 
> card from a camera which was caught (and destroyed) in an explosion.
> 
> I've seen them destroyed by fluid, but the most common cause of failure is 
> good old file system corruption from miscellaneous cause or human error.
> 
> I'd suggest formating it as vfat, and take a look at it with fsck.vfat or 
> badblocks.

	Thanks all for your input.. Consensus is to use it vfat to
stay out of trouble with Lexar.. <grin> It seems to be AOK now except
that fsck.vfat returns an Error 2, but 'dosfsck -tvr /dev/sda1' gives
it a clean bill of health.. I didn't try badblocks, but set it up as
Dos drive F: so we're in business again till the next crisis... 

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
