From: whitnl73@juno.com
Subject: Re: file transfer via telnet
Date: Sat, 22 Feb 2003 11:03:12 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030222.120730.8.3.whitnl73@juno.com>
References: <20030221.140308.8.0.whitnl73@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030221.140308.8.0.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: whitnl73@juno.com
Cc: ichi@ihug.co.nz, linux-newbie@vger.kernel.org

On Fri, 21 Feb 2003 whitnl73@juno.com wrote:

> However, to downoad a file by telnet, capture stdout so:
>
> telnet hostname | tee logfile
> ....
> uuencode remotefile remotefile
> exit
> tr -d "r" < logfile | uudecode

tr -d "\r" < logfile | uudecode

of course.  Sorry.

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
