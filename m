From: Peter Gantner <peter.gantner@stud.uni-graz.at>
Subject: Re: Directories in sync
Date: Mon, 1 Mar 2004 20:46:02 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0403012041040.39876@scourge.crownest.net>
References: <Pine.LNX.4.56.0403011531290.12065@pluton.chilepac.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0403011531290.12065@pluton.chilepac.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rodrigo Gesswein <rodri@chilesat.net>
Cc: linux-newbie@vger.kernel.org

On Monday, the 1st of March, Rodrigo Gesswein thusly spake:

> Hi!
> 
>    Does anybody know a good tool to keep 2 or more directories (local or
> remote) full synchronized ?
> 
>    Thank you in advance..
> 
> Rodrigo...

rsync [1] is really good at that.
It only transfers the differences necessary, and features other nifty 
things like transfer over ssh and on-the-fly compression.

Unison [2] seems to be popular too because of easy cross-platform 
syncing.

hth,
	Peter

[1] http://rsync.samba.org
[2] http://www.cis.upenn.edu/~bcpierce/unison/

 -- 
"I do not think the way you think I think." 
    -- Kai, last of the Brunnen G
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
