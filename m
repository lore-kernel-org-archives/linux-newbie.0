From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: partitioning
Date: Mon, 26 Jan 2004 00:27:57 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401260017210.9502@ppg_penguin>
References: <200401252137.39975.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200401252137.39975.wheds8@ms66.hinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Cc: linux-newbie@vger.kernel.org

On Sun, 25 Jan 2004, S. Barret Dolph wrote:

> I am probably getting too picky about repartitioning my drive but I want it to
> be set up for a long time. I never use all the space in my harddrive even
> though it is relatively small. (I only use it for work and don't play any
> games.)
>
> sda6		/usr		6g

>
>  I will probably take another 3 out of home and add it to usr/ but that is
> probably overkill. Neither use too much.
>

 If you're going to separate /usr, and the reasons for doing so probably
don't apply to many people here, even 3GB should be too much.  Depends,
of course, on exactly what you put there, but assuming you don't install
a _lot_ of things you aren't going to use then 3GB is more than enough
for a _full_ system (except /home).

 You might also want to consider how you will upgrade in the future.  If
your existing distro will provide updates for future releases, fine.  If
not, you might want to keep some space free for a replacement, so that
you can still run, or at least mount, the old one to check some of the
details.

> I am confused about where /swap should go. I have a SCSI drive and from what I
> read that should be on the outside. So should I put /swap at sda8? (Given
> that I have added /var.)
>

 Outside is supposed to be faster, but I don't believe there is much in
it.  I believe that the _first_ cylinder is the outside.  The real
killer is probably head movement.  Unless you have a repeatable workload
that goes fairly heavily into swap, plus time to kill benchmarking
different partition layouts, it isn't worth worrying about.

Ken
-- 
This is a job for Riviera Kid!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
