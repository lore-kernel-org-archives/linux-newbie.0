From: Ray Olszewski <ray@comarre.com>
Subject: Re: how to assess occupied space
Date: Sun, 15 Sep 2002 12:05:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020915114634.022e1470@celine>
References: <200209151843.g8FIhZPc006695@pegasus.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209151843.g8FIhZPc006695@pegasus.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

At , Heimo Claasen wrote:
>Thanks for the hints; I didn't know some of the 'du' subtelties.
>(BTW, is 'du' for _disk_ or for _directory_ use ?)

du is a very old Unix command (almost all the 2-character ones are ... they 
date back to 300-baud days, if not to 110). I doubt anyone today knows for 
sure what du originally was intended as a mnemonic for. I'd *guess* "disk 
utilization", but I don't really know either.

[...]
>The question for "space occupied" is particularl important with the
>Zip-disks, and sometimes 'du' or 'df' didn't seem to give reliable
>answers.
>(And in any case to know how much space is left demands some mental gym.)

This description is too vague to troubleshoot, probably even for people who 
have Zip drives. I'm not even sure what you mean by "reliable" -- in my 
professional world, a "reliable" measure is one that is repeatable, but not 
necessarily accurate. By that standard, I'd be astounded if du and df were 
not reliable. (Such a measure is far from useless. If you knew, for 
example, that "df" always underestimated free space by 10%, you could 
easily make use of it ... but that might be the "mental gym" you are 
referring to, I suppose.)

I expect you mean accurate, though ... so I wonder if, for example, you are 
allowing for the reserved-for-root exclusion that df makes. Or even the 
effect of the fact that 1K=1024 (usually), not 1000. These are only 
examples of two possible sources of discrepancies between what you get and 
what you expect, included here to try to make concrete why we need the 
details of a complaint, not just a general lament, if we are to give you 
decent advice.

[...]
>The various package managers give some help, but it's not very
>transparent. After I spent full days on de-installing not needed
>packages (and some notes kept would indicate a considerable volume),
>the final result was only a small diminuation of occupied disk space,
>according to those 'du'/'df's.
>Hmm.

Again, you need to be specific here. My own experience is with the Debian 
package manager, and I find it (I mean apt, not dpkg) is very helpful with 
respect to space utilization issues ... not perfect, but still very good. 
Which distro and "various package managers" are you actually using, and 
what are a couple of examples of inconsistencies between the sizes 
the  package manager reports and the added space de-installing actually 
delivers?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
