From: Ray Olszewski <ray@comarre.com>
Subject: Re: ppp-go anomoly??
Date: Wed, 05 Feb 2003 08:43:17 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030205083654.02143b90@celine>
References: <20030205102715.A231@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030205102715.A231@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hal -- Look at the logs; usually, pppd (and chat, if your setup uses it) 
reports more detail on failures there than what you are seeing at the 
command line. It could be something like LCP negotiation timing out. 
Speculating as to why it happens sometimes but not others is hopeless until 
you get a better handle on what "it" is. If the logs aren't reporting 
enough connection detail, raise temporarily the level of logging that pppd 
does (the "debug" option).

At 10:27 AM 2/5/03 -0500, Hal MacArgle wrote:
>Greetings:  Slackware 8.0 w/2.4.13 kernel, using 'pppsetup' to
>configure - working perfectly for several months.. All of a sudden,
>for no apparent reason; when invoking 'ppp-go', I get the screen report
>"Connect script failed" and no cursor.. Entering a ^C, then invoking
>ppp-go again - starts the dialup normally.
>
>Oddly enough; when turning the machine on in the morning the first
>invocation of ppp-go dials OK.. However, any trys later in the day
>return the script failure message..
>
>This first happened a few weeks ago but, in the middle of this, I
>changed ISP's so had to run pppsetup again for that configuration..
>I thought this would clear up the problem but it's still with me with
>the new ISP..
>
>A minor bother but I'm sure bloody curious as to what happened and
>how to fix it.. Any suggestions/comments??      TIA!!




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
