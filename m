From: Ray Olszewski <ray@comarre.com>
Subject: Re: ADSL and mail
Date: Tue, 01 Mar 2005 22:54:26 -0800
Message-ID: <5.1.0.14.1.20050301223821.0207fce8@celine>
References: <1109795489.4963.22.camel@fxrhl90>
Mime-Version: 1.0
In-Reply-To: <1109795489.4963.22.camel@fxrhl90>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 01:31 PM 3/2/2005 -0700, frans toruan wrote:
>Hi, Ray . . .
>
>As you suggested the last time, I succeeded in connecting my machine to
>the net, just by deleting the name of my LAN nameserver from the DNS
>search list.
>Now, I can already browse the net and send/receive mail, using Ximian
>Evolution ( included in RHL 9 ).
>My new problem is when I tried to send mail via Pine 4.4.( through the
>x-terminal ). In configuration, I use the name of my ISP in the
>user-domain column, and the name of my SMTP server in the smtp-server
>name.
>I succeeded to send a mail into my other address ( within the LAN ), and
>retrieved it under Windowz ( dual booting, in the same machine ).
>But, when I send to another address outside of the LAN, I failed.
>What could have happened?
>Below, I attached the data.
[data deleted here]

I read the traffic on linux-newbie pretty regularly, Frans, so there's 
really no need to send me a personal copy of a message you're posting to 
the list.

As to your actual problem, I'm not able to give you specific advice ... the 
last time I used pine was back around 1998. But what you're running into 
may not be a pine problem as such.

If I follow you, your workstation uses an on-LAN SMTP server to send mail. 
Using it, you were able to send mail successful to another on-LAN address, 
but not to a couple of addresses off-LAN. In using these terms, you mean, I 
suspect, that the successful address can be reached for delivery without 
going to any off-LAN SMTP server (your ISP's forwarder, for example, or the 
SMTP server identified by the MX record for the destination FQDN) ... that 
is, the on-LAN SMTP server recognizes your "other address (within the LAN)" 
as one it can deliver to locally.

This causes me to suspect that your on-LAN SMTP server is not properly 
configured to send mail off-LAN. I don't know enough about your site (or 
anything about the SMTP server itself) to know what exactly is wrong, but 
there are many possibilities. If the SMTP server uses direct delivery, your 
ISP may block outgoing port-25 traffic to force its customers to use their 
forwarder. If you are using their forwarder, there could be a problem with 
its requiring POP-before-SMTP authentication, or you might be running into 
some sort of anti-relaying measure.

Since you dual-boot into Windows, what SMTP server is your Windows MUA set 
to use? If the on-LAN SMTP server works fine with a WIndows MUA but not 
with a Linux UA, then of course my guessing here is off target ... but in 
that case you'll need help from someone who has more revent experience with 
pine than I have.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
