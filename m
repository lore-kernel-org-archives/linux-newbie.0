From: Robin Doer <robin.doer@gmx.de>
Subject: Re: Permissions changing
Date: Sat, 20 Jul 2002 19:57:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020720175020Z317450-685+14704@vger.kernel.org>
References: <5.1.0.14.1.20020720091409.024ab480@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020720091409.024ab480@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Am Samstag, 20. Juli 2002 18:14 schrieb Ray Olszewski:
> At 09:41 PM 7/20/02 -0400, Natarajan K wrote:
> >HI,
> >         I am using  Mandrake 8.2. I allowed the mail log file to be read
> > by everybody. But the permissions were reverted soon without my
> > knowledge. Is any daemon running by default that changes the permissions
> > of important files?
>
> I don't know offhand what Mandrake runs by default ... but see if logrotate
> is running. It *might* cause this sort of change to happen.

But it's also possible that your mail-client checks the permissions of  files 
and, if it's necessary, change it back (for security reasons). Try to change 
the owner of the logfile and then see what happend.

Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
