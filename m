From: _z33 <timid.Gentoo@gmail.com>
Subject: Re: what do the dots mean?
Date: Tue, 06 Sep 2005 09:51:34 -0700
Message-ID: <dfj58o$fe3$1@sea.gmane.org>
References: <dfeaqa$qch$1@sea.gmane.org> <20050904120533.40576.qmail@web61014.mail.yahoo.com> <dfeo9p$m08$1@sea.gmane.org> <431C6C85.1050403@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <431C6C85.1050403@bcgreen.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Stephen Samuel wrote:
> No the second dot does NOT disappear... Watch  your output closely.
> You should also get yourself a linux distribution ( www.knoppix.org
> has bootable CD or DVD images ).  and try the command 'man ctime'
> (the reason why I say that is that is that 'PAUSE' is a DOS command)
> 
> The %.24s says "Only print the first 24 characters of the output
> from 'ctime'.  You see, the output from ctime includes a newline as
> the last (25th) character of it's output,  so  %.24s chops off the output
> just before the newline.
> 
> I.e. the resultint output is   <DATE>\n.\n
> 
> The trailing dot is now on the next line.

Thanks. I saw that :)

_z33
-- 
I love TUX; well... that's an understatement :)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
