From: Ray Olszewski <ray@comarre.com>
Subject: Re: security
Date: Tue, 17 Feb 2004 18:10:40 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040217180652.02019288@celine>
References: <20040217191000.GA30689@teamfinders.org>
 <40325596.6090805@dpomeroy.com>
 <20040217191000.GA30689@teamfinders.org> <40328625.4080403@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40328625.4080403@dpomeroy.com>
References: <20040217191000.GA30689@teamfinders.org>
 <40325596.6090805@dpomeroy.com>
 <20040217191000.GA30689@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 01:22 PM 2/17/2004 -0800, dave wrote:
[...]
>  That was a typo.  I've made some progress with Rays help.  It appears 
> msec is causing the problem.  It keeps running and revoking the write on 
> the /home/everyone subdirectory for the group.  I'll work on msec.
>Thanks for the help

If I read the online docs for msec correctly, the standard mask for 
permissions is normally determined by the security level you choose to run 
msec at; the higher the level, the more restrictive the permissions. But 
this is one of the things you can modify independent of security level, by 
settings in

         /etc/security/msec/perm.$PERM_LEVEL
or
         /etc/security/msec/perm.local

Look in  http://www.mandrakeuser.org/docs/secure/smsec.html  for the details.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
