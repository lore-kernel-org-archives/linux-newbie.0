From: Ray Olszewski <ray@comarre.com>
Subject: Re: repairing unstable mouse behavior
Date: Tue, 13 May 2003 06:54:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030513064731.01eb14a8@celine>
References: <200305131334.h4DDYvjs017212@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305131334.h4DDYvjs017212@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:34 AM 5/13/2003 -0400, Haines Brown wrote:
>I have very unstable mouse behavior (mouse jumps and sweeps as if LMB
>depressed, causing all sorts of things to happen). The problem comes
>and goes, is more manifest with certain apps than others, seems to
>subside when I log out and back in, etc.
>
>I have a backup of my system, but not sure what files or directories I
>ought to replace. Recommendations appreciated.

This is a bit vague as a description, Haines. You don't even say if you're 
having this problem on consoles, with X, or both.

So ... vague descriptions get vague advice, I guess. The one possibility I 
see is that you are running both a console mouse program (gpm is the 
standard one) and X, and that they are interacting badly. If so, the 
solution is either not to run gpm at all or to turn it off before you start 
X ... whichever is appropriate to the specifics of your setup and needs.

If that's not it ... and very possibly it is not ... please post again with 
the sorts of details you would want to see if someone asked you for help 
with this problem. (I put it that way, Haines, because you've been on this 
list for a long time and should know what a proper problem description 
looks like by now.)

PS - Your MUA or MTA is once again providing the phony To: address 
(linux@hartford-hwp.com) instead of the real list address.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
