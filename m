From: "Brian P. Bilbrey" <bilbrey@orbdesigns.com>
Subject: re: LVM, was RAID (was  Samba something)
Date: 09 Oct 2002 20:41:42 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034210503.32519.33.camel@goldfinger.orbdesigns.com>
References: <200210092310.g99NA7d10263@firebin.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210092310.g99NA7d10263@firebin.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 2002-10-09 at 19:11, Alan Womack wrote:
> I assume you are using them in a raid, are you using an IDE controller, 
> if so which one or are you using RAID within the kernel itself.  e.g.
> software only raid.

No, actually. This is just a staging server - we backup from production
solaris and linux boxes to this one, then from the staging server to
tape. So we did the easy thing to make sure we didn't run out of
storage. Other than a 3 Gig root and a 1 gig swap, everything's in a
single 464G LVM partition. Woo Hoo. Makes for an interesting df listing,
rather startling to someone who doesn't know...

> Having 4 devices vs 2 devices is a tough decision, more possibility 
> for individual failure, more power consumption vs. more and
> flexibility. :)

Indeed. With everything in a large LVM, the MTPF is quartered. But then,
it's set up just as the client directed, risks taken into consideration.

regards,

.brian

-- 
Brian Bilbrey && bilbrey@orbdesigns.com && http://www.orbdesigns.com/
	The guy has a reality distortion field generator 
	the size of the state of Rhode Island. 
                                 - Daniel Gray

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
