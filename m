From: whitnl73@juno.com
Subject: Re: Process information?
Date: Wed, 10 Dec 2003 19:13:29 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031210.193742.8.0.whitnl73@juno.com>
References: <20031210005506.8C0347268@sitemail.everyone.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031210005506.8C0347268@sitemail.everyone.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: weeteck@linux.net
Cc: linux-newbie@vger.kernel.org

On Tue, 9 Dec 2003, Neo Wee Teck wrote:

> But in redhat's kernel, even with ps ax, it shows [httpd]
>
From man ps:

       Programs swapped out to disk will be shown without command
       line  arguments,  and  unless  the  c  option is given, in
       brackets.

Anything about the RedHat kernel that would cause httpd's to be swapped
out?  Of course, if they are inactive, they will get swapped out
eventually.

Lawson

--
---oops---



________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
