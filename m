From: Ray Olszewski <ray@comarre.com>
Subject: Re: directory size measurement
Date: Tue, 06 Aug 2002 17:38:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020806172917.021954b0@celine>
References: <5.1.0.14.1.20020806152943.02154a90@celine>
 <200208062211.g76MBYk13820@hartford-hwp.com>
 <5.1.0.14.1.20020806152943.02154a90@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020806233734.5d80df10.me@gavinlaking.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:37 PM 8/6/02 +0000, Gavin Laking wrote:
>On Tue, 06 Aug 2002 15:34:30 -0700
>Ray Olszewski <ray@comarre.com> wrote:
>
> > I don't know of one. But will a list sorted by size serve your purposes?
> > If so, you can use the "du" command for that. The relevant command is
> > approximately this --
> >
> >          du -s /somedirectory/*  | sort -nr
> >
> > Leave off the "r" and the largest ones will be at the end instead of the
> > beginning, which I find more convenient.
>
>So that we can get the top ten largest, can't we do this?
>
>         du -s /somedirectory/* | sort -nr | tail

Good idea, and almost right. This way you get the 10 *smallest*, since the 
r argument to sort reverses the order of the sort.

Try this, however:

         du -s /somedirectory/* | sort -nr | head

(Betcha you forgot there even was a "head" command. So did I at first.)

One caveat on all of this, though -- if the directory being checked 
contains subdirectories -AND- files, it will return the 10 largest results, 
which may be subdirectories, individual files, or a mix of the two.


>with or without the 'r' makes a difference (just have a play to see how),
>and also beware of directories that contain files that are both 'x'
>kilobytes in size and 'y' megabytes in size since they seem to show up
>funny
>in the results.


This is the reason I omitted the h argument to du; without it, all the 
sizes are printed out in actual bytes, not with the K, M, and G 
abbreviations, so this problem does not arise.


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
