From: Hal MacArgle <haltec@iceweb.net>
Subject: Ping a DNS???
Date: Fri, 10 Jan 2003 09:09:52 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030110090952.A303@lnx2.w8mch.ampr.org>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: Contemplating an ISP change I thought I'd ping the present
thence the proposed DNS's to evaluate the round trip time..

The present, 204.97.4.2, returned it's RTT to be expected.. The
proposed, 65.196.16.3, returned "100% packet loss" - not expected.

Both addresses are in /etc/resolv.conf, but that shouldn't make a
difference here - IMHO. <grin> Also; since I'm connected to the INet
via the present ISP my ping testing idea might be a dumb one.

Invoking 'dig' for both addresses I find a difference in the report:
"ANSWER" is set = 1, on the working site and = 0 on the non-working.
This is obvious, to me, what's happening but I can't help but
wonder if that might mean I wont be able to use that site? /Or/ why
would a SysAdm set his/her site to not support ping? I'm confused.

TIA and thanks,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
	       haltec@iceweb.net | w8mch@iceweb.net
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
