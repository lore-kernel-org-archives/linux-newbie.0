From: Gavin Laking <me@gavinlaking.co.uk>
Subject: Re: directory size measurement
Date: Tue, 6 Aug 2002 23:37:34 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020806233734.5d80df10.me@gavinlaking.co.uk>
References: <200208062211.g76MBYk13820@hartford-hwp.com>
	<5.1.0.14.1.20020806152943.02154a90@celine>
Reply-To: me@gavinlaking.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020806152943.02154a90@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Tue, 06 Aug 2002 15:34:30 -0700
Ray Olszewski <ray@comarre.com> wrote:

> I don't know of one. But will a list sorted by size serve your purposes?
> If so, you can use the "du" command for that. The relevant command is 
> approximately this --
> 
>          du -s /somedirectory/*  | sort -nr
> 
> Leave off the "r" and the largest ones will be at the end instead of the
> beginning, which I find more convenient.

So that we can get the top ten largest, can't we do this?

	du -s /somedirectory/* | sort -nr | tail

with or without the 'r' makes a difference (just have a play to see how),
and also beware of directories that contain files that are both 'x'
kilobytes in size and 'y' megabytes in size since they seem to show up
funny
in the results.

Hope that helps, 

G

-- 
  Gavin Laking

  http://www.gavinlaking.co.uk/
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
