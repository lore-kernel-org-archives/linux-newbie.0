From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: defrag
Date: Tue, 1 Oct 2002 22:27:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210012227.15188.linux-newbie@jimmo.com>
References: <000601c26981$c2a1b370$64fea8c0@pkrausxp>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000601c26981$c2a1b370$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tuesday 01 October 2002 21:35, Paul Kraus wrote:
> Can you defrag a Linux drive I think the partition is ext3. Do they need
> deframenting?
>

Typically there is no reason to defragement any *nix filesystem. Many are 
designed to keep fragmentation at a minimum and do to the nature of a 
multi-user system, you are not going to be reading the whole file at once. 
Therefore, when you do need to go re-read the harddisk, it doesn't matter if 
you go back to the place where you last read or someplace compeltely 
different.

If memory serves me right, there was a defrag tool for the ext2 FS, but I 
don't have it on my system and have never used it.

Regards,

jimmo

-- 
---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
think you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or forums 
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
