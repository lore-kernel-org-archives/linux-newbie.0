From: Joseph Jackson <skoidat@lvcm.com>
Subject: Re: firewalls on Linux 2.4.X
Date: Wed, 17 Apr 2002 09:10:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CBD9E75.1030802@lvcm.com>
References: <F182IyDPxcgiKMXNaGf0001b276@hotmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jerry T <linuxl1@hotmail.com>
Cc: linux-newbie@vger.kernel.org

Jerry T wrote:

> What firewall is recommended on kernels 2.4.X? Any documentation that I 
> read about ipchains refers to version 2.2.X. What about iptables?
> 
> _________________________________________________________________
> Chat with friends online, try MSN Messenger: http://messenger.msn.com
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

You will want to use iptables with the 2.4.x kernels.  Iptables is vastly 
greater than the older ipchains and you can find info about iptables here
http://www.ibiblio.org/pub/Linux/docs/HOWTO/other-formats/pdf/Adv-Routing-HOWTO.pdf
and
http://www.tldp.org/HOWTO/Adv-Routing-HOWTO.html

Hope that helps.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
