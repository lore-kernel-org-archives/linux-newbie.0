From: Ray Olszewski <ray@comarre.com>
Subject: Re: configuring sendmail to cope with AOL
Date: Thu, 22 May 2003 14:26:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030522140328.01fadb38@celine>
References: <200305221952.h4MJqU8n017518@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305221952.h4MJqU8n017518@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:52 PM 5/22/2003 -0400, Haines Brown wrote:
>I'm using sendmail as my mta, but recently experienced AOL's refusal
>to accept mail from "residential" sources having dynamic IP
>addresses. This primitive method to cope with spam has apparently been
>causing pain for several years, but for some reason it's only now
>biting me.

You have a dynamic address? I wouldn't guess it from your whois and DNS 
records.

>I get the impression that the way around this is to reroute outgoing
>mail to *@aol.com (and perhaps *@netscape.com) to my ISP's mail
>server.

Mail relay or forwarder, not server. Might be the same host as the mail 
server, or it might be different. The mail server accepts incoming mail; 
the mail relay or forwarder processes outgoing mail.

>I've heard of people configuring their qmail and postfix to do this,
>but I'm runnng sendmail and haven't a clue on what to do. Hand-holding
>would be appreciated.

I don't use sendmail here, so I can't be specific. If you want to set up 
sendmail so that it forwards *all* outoing mail to the ISP's relay, that is 
(usually) pretty easy. In most MTAs, it is a standard configuration 
setting. For help with sendmail, try this URL (or do a Google search 
yourself ... I found this in a minute) --

https://listman.redhat.com/pipermail/ redhat-list/2003-January/163892.html

If you want to use the ISP's relay *only* for AOL and Netscape mail, that 
is harder, because the MTA now has to take different actions based on the 
destination. sendmail can do that too, but it requires more intricate 
configuration. You will need a real sendmail reference for this, or a real 
sendmail expert, since it is not a common setup.

>A simple question: What's involved in using an ISP's mail server? Do
>all ISP's have such a server available for their customers? Do I need
>permission to use it? Is it likely to involve an additional charge?

The canonical answer to all of this is : it depends on your ISP. These 
really are not Linux questions.

Some rule-of-thumb generalizations: Any ISP that sells service with dynamic 
addresses is likely to provide a forwarder. Windows workstations that are 
directly connected to the Internet (though I shudder at the thought) need 
an MTA to send mail through, another reason for an ISP providing one. 
Usually, the name is something like smtp.ispsname.com on mail.ispsname.com, 
but that part really does have to come from your ISP. I've never seen an 
ISP that charged extra for this service, but who knows in your case. To use 
it, either you tell your MUA to use it directly (the typical setup for a 
WIndows host) or tell your MTA to use it as a relay.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
