From: Ray Olszewski <ray@comarre.com>
Subject: Re: At Loss with Mailing
Date: Tue, 15 Apr 2003 08:28:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030415080234.01e96380@celine>
References: <200304150947.h3F9lcp05703@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304150947.h3F9lcp05703@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

I'm cc'ing this to the list, since I read what you wrote as indicating that 
you are having trouble sending to the list. I apologize if I misunderstood 
your intent.

The issue is unlikely to involve philonline and *mail* as such. Your system 
uses its own MTA to connect directly to mine (or vger or whoever). It does 
not use the philonline server to process the mail.

I previously suggested that your problem appeared to be that philonline 
does not respond to a reverse lookup of your IP address. Nothing you have 
reported since then changes my opinion. Since you use a dial-up connection, 
you get a different IP address each time you connect; the "erratic pattern" 
may simply mean that some of these addresses resolve on reverse lookup but 
others do not. Combine that variability with the fact that some receiving 
MTAs require reverse lookups but others do not, and the resulting pattern 
could well look "erratic" ... it would be especially hard to spot if, say, 
vger itself did not run this check but its MX backup, zeus, did (pure 
speculation here; this is easier for you to check than me).

 From the actual messages you report finding in the logs, I suppose the 
problem might be with DNS at philonline. A way around that, at least for 
testing, is to run BIND (named) on your host and bypass the philonline 
nameservers entirely. This seems like a long-shot, though.

I really have nothing else to suggest, Peter. If you try some of these 
suggestions and have from them new results to interpret, please feel free 
to write (or post, if you can) again.

At 05:47 PM 4/15/2003 +0800, Peter wrote:
>Hi Ray,
>
>I hate to touch this subject once more and send this mail not to the list.
>
>It seems there is an erratic pattern when mail is sent or not with my ISP
>philonline.com. Sometimes it all goes out, sometime not to institutional
>addresses, sometimes it goes to them but not to private ones, like the other
>day to you, the cc: to linux-newbie went, etc, etc.
>
>With my alternate ISP skyinet.net there is no such problem.
>
>Could it be that philonline is overloaded, may be having old equipment or 
>what
>else could be the cause. If it can not handle the mail volume it might give
>such false message like can't find the host.
>
>If this continues I will have to find another ISP for my mailing with the
>inconvenience of changing my e-mail address.
>
>Happy Easter Holidays
>--
>Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
