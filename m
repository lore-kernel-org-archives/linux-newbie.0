From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: user/e-mail name
Date: Wed, 3 Mar 2004 15:05:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403031505.52218.pa3gcu@zeelandnet.nl>
References: <20040303074855.B8A553ACF@heisspf>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040303074855.B8A553ACF@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <peter@skyinet.net>, linux-newbie@vger.kernel.org

On Wednesday 03 March 2004 08:48, Peter wrote:
> Hi,
>
> In Slackware9.1 my user name is peter and my e-mail address is
> heisspf@isp.net
>
> Apparently mail I send arrives From: peter@isp.net. Therefore, when the
> recipient makes a "reply" the mail bounces since naturally peter@isp.net is
> not found.

Yes i know, i tryed to send you a reply to your mail to me but it got bounced.

>
> My mail program is exmh.
>
> Can that be corrected w/o changing my user name?

First thing i would try is simply create a user account for heissp and add an 
alias in /etc/mail/aliases;

heissp:	peter
Save file and run;
newaliases

No doubt there are other ways to do it, but this seems a very simple and easy 
way to do it.

> Thanks & regards
>
> --
> Peter

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
