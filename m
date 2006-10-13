From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sequence of events at init (was boot) - fixed (sort of)
Date: Thu, 12 Oct 2006 17:12:01 -0700
Message-ID: <452ED9D1.3010002@comarre.com>
References: <53876815734.20061011215642@wa5rrh.us> <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com> <452E6539.4090902@comarre.com> <52946266531.20061012171413@wa5rrh.us> <452EC95D.6050807@comarre.com> <100951833359.20061012184700@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <100951833359.20061012184700@wa5rrh.us>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Jim Reimer wrote:
> I added a bit to /etc/profile a couple of days ago to set the EDITOR
> environment variable to /usr/bin/jstar....  that was the problem.  I
> don't know WHY that should be a problem, but removing is has cured
> the malady.  (Now - how do I use jstar as the default editor?)

You don't ... since it apparently is not functional as the systemwide 
default editor. (If you figure out the problem ... my prior, off-list 
message to you offered some advice as to how ... then you may be able to 
use jstar this way.) I don't use jstar or its ancestor joe, but the 
Debian package for joe describes it as WordStar-like. That means -- at 
least in its jstar configuration -- it is a fullscreen editor using 
(probably) nsurses, and it may not function properly when called 
non-interactively, say, as any bash script might.

That's all just a guess. The only way to know the specifics of the 
problem is to find the init script that is invoking the editor ... I 
believe bash uses the built-in command "edit" to invoke EDITOR, so check 
the init scripts for that.

But do you need it as the systemwide default? You could add an EDITOR= 
line to specific users' /home/[userid]/.profile or ./.bashrc 
directories. Don't try this with root, though, or you may recreate the 
problem you just fixed.

> 
> Ray Olszewski wrote:
> 
> <snip>
> 
>>Why are you running mDNSResponder? Try disabling it from runlevel S 
>>(just remove the symlink to its init script in /etc/rcS.d, or change the
>>starting S to NOT) and see if it helps. You may have to disable nifd as
>>well, since it appears to require nDNSRresponder.
> 
> 
> I guess I'm running it because it got installed with everything else
> when I installed FC4....  I'm still weeding out things I don't need -
> the problem is knowing what those things are.
> 
> 
>>Final thought ... what did you change recently? If this behavior is new,
>>it probably results from your having made some change since the last
>>successful boot/init.
> 
> 
> See above.
> 
> I'm back in business.  Thanks.
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
