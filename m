From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: safety/permissions
Date: Tue, 25 Mar 2003 09:05:14 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16000.3514.269146.127648@ksys.rug.ac.be>
References: <15999.13082.237069.193180@ksys.rug.ac.be>
	<20030324.165557.8.0.whitnl73@juno.com>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030324.165557.8.0.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: whitnl73@juno.com
Cc: linux-newbie@vger.kernel.org


Mail from whitnl73@juno.com
sent on Monday March 24 2003 at 16:50 (GMT-0500):

> On Mon, 24 Mar 2003, Kurt Sys wrote:
> 
> [...]
> >
> > I guess another config-file, somewhere is /etc is wrong and
> > fetchmail reads that file if it doesn't find the
> > 'smtphost'-option. Could this be right?
> >
> Not exactly.  smtphost defaults to 'localhost'.
> [...]


OK... I get it. True: I can't send mail to myself using a simple
command like:

$ echo "To: kurt@localhost" | qmail-inject

Possible reason (just for my understanding of this machine, this is
absolutely nothing I worry about)?

tnx,
Kurt.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
