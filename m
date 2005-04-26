From: chuck <chuck@gelm.net>
Subject: Re: No Locate for User
Date: Tue, 26 Apr 2005 07:37:24 -0400
Message-ID: <426E27F4.9070104@gelm.net>
References: <200504250427.j3P4R6J5000324@skyinet.net>	<426C7ABC.3000007@comarre.com> <20050425161131.5192b7e9@skyinet.net> <426D1D71.6060706@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <426D1D71.6060706@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>, Peter <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Ray Olszewski wrote:

> <snip>
> (BTW, can some Slackware user here with a working locate command run 
> "ls -l /usr/bin/locate" and "ls -l /var/lib/slocate/slocate.db" and 
> post the results, so Peter can see what a working Slackware system is 
> *supposed* to look like?)

I am not subscribed under this account so I'll privately post to Ray and 
Peter.  HTH, Chuck

Slackware 10.1.0

#ls -l /usr/bin/locate
lrwxrwxrwx  1 root root 7 2005-03-21 12:32 /usr/bin/locate -> slocate*

#ls -l /usr/bin/slocate
-rwxr-sr-x  1 root slocate 26652 2004-05-29 23:52 slocate*

#ls -l /var/lib/slocate/slocate*
-rw-r-----  1 root slocate 7890114 2005-04-26 04:42 /var/lib/slocate/slocate.db




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
