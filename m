From: zavandi <zavandi@gmail.com>
Subject: Re: how to replace three spaces with tab
Date: Sat, 4 Jun 2005 15:13:49 +0300
Message-ID: <321aa0d20506040513580e7f3e@mail.gmail.com>
References: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
	 <200506021740.01816.eric@cisu.net>
	 <Pine.LNX.4.61.0506021831040.7223@localhost.localdomain>
	 <200506021907.06291.eric@cisu.net>
	 <42A137E3.6010507@mnl.ntsp.nec.co.jp>
	 <Pine.LNX.4.61.0506040604050.7223@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0506040604050.7223@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

James Miller <jamtatREMOVETHIS@mailsnare.net> wrote:
> 
> me@mymachine:~$ unexpand -a -t=3 tmp-test_unexpand > file2
> unexpand: tab size contains an invalid character
> me@mymachine:~$ unexpand -a -t=3 tmp-test_unexpand >file2
> unexpand: tab size contains an invalid character
> me@mymachine:~$ unexpand -all -tabs=3 tmp-test_unexpand > file2
> unexpand: invalid option -- l
> Try `unexpand --help' for more information.
> me@mymachine:~$

unexpand -a -t3 tmp-test_unexpand > file2

...or...

unexpand -a -t 3 tmp-test_unexpand > file2

...or...

unexpand --all --tabs=3 tmp-test_unexpand > file2
 
...or...

unexpand --all --tabs 3 tmp-test_unexpand > file2

It's all standard getopt_long(3) usage.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
