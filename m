From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: user/e-mail name
Date: Wed, 3 Mar 2004 10:26:36 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040303152636.GA743@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This bounced of course; your return address..
<peter@skyinet.net>: unknown user: "peter@skyinet.net"

Greetings:  Glad that some things, finally, go right... Re: your
printer card arrival..

Re: usernames, etc.. Richard has already replied..

You're "suffering" with the same thing I have to fight every day..

Don't know about exmh but, in my case, I have to set up the mailer,
in my case Mutt, with Reply To: haltec@kvinet.com.. Then I have to
compile Sendmail 8.11.x with the features of MASQUERADE_AS and
MASQUERADE_ENVELOPE, so that the outgoing mail seems to be coming
from kvinet.com, rather than my machines actual  hostname
lnx2.w8mch.ampr.org... Since I have five user names and one ISP, each
mailer for each user has to be set up with: <user>@kvinet.com, the
MASQUERADE_AS taking care of the rest of the address.. Does this make
any sense??

I've noticed that the new Sendmail 8.12.XX series does not support
MASQUERADE, probably because of security, whatever..

Someone with more exmh smarts might help and they may call it
something like ALIAS - dunno.... Is exmh a combination MUA and MTA??
I'm not sure as I think I tried it years ago, for some reason, and it
didn't click with me.. Usually the Mailer, MUA, and the Mail Transfer
Agent are different programs.. 

It's a tough nut and know I'm not much help but I spent several days
trying PostFix and QMail to solve the Sendmail problem - to no
avail.. I'm getting too old for this stuff, methinks.. <grin>


    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam

On 03-03, Peter wrote:
> Hi,
> 
> In Slackware9.1 my user name is peter and my e-mail address is heisspf@isp.net
> 
> Apparently mail I send arrives From: peter@isp.net. Therefore, when the 
> recipient makes a "reply" the mail bounces since naturally peter@isp.net is 
> not found.
> 
> My mail program is exmh.
> 
> Can that be corrected w/o changing my user name?
> 
> Thanks & regards
> 
> -- 
> Peter
> -- 
> Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
