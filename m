From: James Miller <jamtatREMOVETHIS@mailsnare.net>
Subject: Re: how to replace three spaces with tab
Date: Sat, 4 Jun 2005 06:05:30 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0506040604050.7223@localhost.localdomain>
References: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
 <200506021740.01816.eric@cisu.net> <Pine.LNX.4.61.0506021831040.7223@localhost.localdomain>
 <200506021907.06291.eric@cisu.net> <42A137E3.6010507@mnl.ntsp.nec.co.jp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42A137E3.6010507@mnl.ntsp.nec.co.jp>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 4 Jun 2005, Franklin Chua wrote:

> I don't know if this will work for you
>
> unexpand -all -tabs=3 file1 > file2
> or
> unexpand -a -t=3 file1 > file2

me@mymachine:~$ unexpand -a -t=3 tmp-test_unexpand > file2
unexpand: tab size contains an invalid character
me@mymachine:~$ unexpand -a -t=3 tmp-test_unexpand >file2
unexpand: tab size contains an invalid character
me@mymachine:~$ unexpand -all -tabs=3 tmp-test_unexpand > file2
unexpand: invalid option -- l
Try `unexpand --help' for more information.
me@mymachine:~$

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
