From: Ray Olszewski <ray@comarre.com>
Subject: Re[2]: Linux Help
Date: Mon, 19 Jul 2004 12:11:20 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040719120622.01fb9448@celine>
References: <5.1.0.14.1.20040719101312.01fb9c70@celine>
 <20040719230846.4833.SAVAGE-GARDEN@hanikamail.com>
 <5.1.0.14.1.20040719101312.01fb9c70@celine> <20040720000602.4847.SAVAGE-GARDEN@hanikamail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040720000602.4847.SAVAGE-GARDEN@hanikamail.com>
References: <5.1.0.14.1.20040719101312.01fb9c70@celine>
 <20040719230846.4833.SAVAGE-GARDEN@hanikamail.com>
 <5.1.0.14.1.20040719101312.01fb9c70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:08 AM 7/20/2004 +0600, Kev wrote:
>Hi Ray...
>
>Thanks agane for the reply,
>
>Relay mean to relay mail to my local email server that will be running
>behind the gateway box. and to relay the email from the email server to
>the internet as a smart host.

Well ... if you have an SMTP server on a LAN ("local") host, running an 
SMTP relay on the firewall/router is probably unnecessary. What you can do 
(this is what I do here) is DNAT (port forward) traffic coming to port 25 
on the router's external interface to port 25 on the existing SMTP server. 
Then you can run your greylist and virus checking on that server. This 
approach minimizes the amount of stuff you have running on the 
firewall/router, always a good idea from a security standpoint.

As to outgoing SMTP traffic, there is no need to "relay" it from the LAN 
SMTP server. Ordinary NATing will handle outgoing SMTP traffic from that 
server (unless you have unusual requirments imposed by your ISP ... but if 
you do, you won't get intelligent advice about how to cope with them unless 
you mention them).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
