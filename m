From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: ppp-go anomoly??
Date: Thu, 6 Feb 2003 15:50:25 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030206155025.A257@lnx2.w8mch.ampr.org>
References: <20030205102715.A231@lnx2.w8mch.ampr.org> <5.1.0.14.1.20030205083654.02143b90@celine>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030205083654.02143b90@celine>; from ray@comarre.com on Wed, Feb 05, 2003 at 08:43:17AM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: As usual Ray and Lawson came to the rescue making it easy
to find the problem.. Maybe I need a brain transplant? I did a
"quick" fix first by commenting out "ABORT NOCARRIER" in the chat
script which is probably not a good idea except the mail still
arrives OK.. I was in the wrong ball game thinking it was pppd acting
up. I'm fairly certain now it's a modem problem. USR and I don't
get along too well it seems. <grin>

Appreciate!! Keep up the good work.

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
                Proprietary  Formats  Unacceptable

On 02-05, Ray Olszewski wrote:
> Hal -- Look at the logs; usually, pppd (and chat, if your setup uses it) 
> reports more detail on failures there than what you are seeing at the 
> command line. It could be something like LCP negotiation timing out. 
> Speculating as to why it happens sometimes but not others is hopeless until 
> you get a better handle on what "it" is. If the logs aren't reporting 
> enough connection detail, raise temporarily the level of logging that pppd 
> does (the "debug" option).
> 
> At 10:27 AM 2/5/03 -0500, Hal MacArgle wrote:
> >Greetings:  Slackware 8.0 w/2.4.13 kernel, using 'pppsetup' to
> >configure - working perfectly for several months.. All of a sudden,
> >for no apparent reason; when invoking 'ppp-go', I get the screen report
> >"Connect script failed" and no cursor.. Entering a ^C, then invoking
> >ppp-go again - starts the dialup normally.
> >
> >Oddly enough; when turning the machine on in the morning the first
> >invocation of ppp-go dials OK.. However, any trys later in the day
> >return the script failure message..
> >
> >This first happened a few weeks ago but, in the middle of this, I
> >changed ISP's so had to run pppsetup again for that configuration..
> >I thought this would clear up the problem but it's still with me with
> >the new ISP..
> >
> >A minor bother but I'm sure bloody curious as to what happened and
> >how to fix it.. Any suggestions/comments??      TIA!!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
