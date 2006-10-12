From: Jim Reimer <jdr@wa5rrh.us>
Subject: Re: Sequence of events at init (was boot) - fixed (sort of)
Date: Thu, 12 Oct 2006 18:47:00 -0500
Message-ID: <100951833359.20061012184700@wa5rrh.us>
References: <53876815734.20061011215642@wa5rrh.us>
 <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com>
 <452E6539.4090902@comarre.com> <52946266531.20061012171413@wa5rrh.us>
 <452EC95D.6050807@comarre.com>
Reply-To: Jim Reimer <jdr@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <452EC95D.6050807@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

I added a bit to /etc/profile a couple of days ago to set the EDITOR
environment variable to /usr/bin/jstar....  that was the problem.  I
don't know WHY that should be a problem, but removing is has cured
the malady.  (Now - how do I use jstar as the default editor?)


Ray Olszewski wrote:

<snip>

> Why are you running mDNSResponder? Try disabling it from runlevel S 
> (just remove the symlink to its init script in /etc/rcS.d, or change the
> starting S to NOT) and see if it helps. You may have to disable nifd as
> well, since it appears to require nDNSRresponder.

I guess I'm running it because it got installed with everything else
when I installed FC4....  I'm still weeding out things I don't need -
the problem is knowing what those things are.

> Final thought ... what did you change recently? If this behavior is new,
> it probably results from your having made some change since the last
> successful boot/init.

See above.

I'm back in business.  Thanks.

-- 
-jdr-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
