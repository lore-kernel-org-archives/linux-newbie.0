From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: What happened to "From "????
Date: Wed, 6 Jul 2005 09:33:46 -0400
Message-ID: <20050706133346.GA1367@lnx2.w8mch.ampr.org>
References: <20050703172347.GA485@lnx2.w8mch.ampr.org> <200507050039.j650dsDq000725@meridian.ph> <20050705125308.GB1109@lnx2.w8mch.ampr.org> <20050706155732.4e735cb1@localhost>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20050706155732.4e735cb1@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: heispf@skyinet.net
Cc: linux-newbie@vger.kernel.org

On 07-06, Peter wrote:

Hal:
> > 	One final query: Can you invoke: env <return> in any of your
> > userspace or even root and tell me what the variable $MAIL reports?
> > For years the "normal" has always been /var/spool/mail/$LOGNAME..
> > Will be interesting to see what your working box reports..
> 
>  MAIL=/var/mail/heisspf

	OK another enlightenment.. /var/mail/heisspf will also be
mirrored, exactly, as /var/spool/mail/heisspf... But you are not
using that..



> 
> Sorry not to have mentioned all my setup. I am using procmail to filter my
> mail and for MUA I use mainly exmh, then mail>nail and occasionally like now
> sylpheed-claw. Exmh and sylpheed compliment each other both using
> nmh. Therefore no mail ever enters /var/mail/heisspf instead goes straight to
> various mail boxes and for spam to> /dev/null. 
> 
> Since I used Pine only briefly in the beginning with Linux and then quickly
> switched to exmh with procmail I do not remember having seen From_.
> 
> Thanks for pointing out to me that my mail now comes from meridian.ph. This is
> the provider for my broadband connection, however, I have no e-mail account
> with them, therefore, the mail will bounce. I was not aware of this problem.
> Will see how to sort this out.

	OK, so you've changed over to the "new" mail schemes all the
way.. All the queries answered with a little more knowledge, for
better or worse, eh?? I may have a rocky road ahead.. <grin>
-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
