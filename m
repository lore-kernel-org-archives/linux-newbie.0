From: Shaggy Im-erbtham <shaggy@loxinfo.co.th>
Subject: need method of backing up files
Date: Fri, 08 Nov 2002 18:55:25 +0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4.3.2.7.0.20021108184521.023f8f00@lox2.loxinfo.co.th>
References: <200211080213.gA82D7w02008@philonline.com>
 <eathan@otenet.gr>
 <200211080213.gA82D7w02008@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021108115306.B3759@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I use Slackware 7.0 with upgraded 2.4.18 kernel in a box which serves
as file server to 5 win9x clients.

Is there a method to perform incremental back-ups for every user, for
every day of the week.

Eg.  /home/peter
        /home/paul
        /home/mary

to be backed up everyday into day-of-the-week directories
so on Monday, files that were updated today would be copied to
each user's sub-directory in the monday directory.
/mnt/1monday/peter
/mnt/1monday/paul
/mnt/1monday/mary

and so on
/mnt/2tuesday/peter
/mnt/2tuesday/paul
/mnt/2tuesday/mary

Sometimes we need to track the daily changes that are made, that's
why.

I'm aware RAID is available but I think this is another thing altogether.

TIA
Shaggy

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
