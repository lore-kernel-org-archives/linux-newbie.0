From: Peter <pfheiss@philonline.com>
Subject: Re: At Loss with Mailing
Date: Fri, 09 May 2003 09:30:57 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305090130.h491Uvb03516@philonline.com>
References: <5.1.0.14.1.20030507073022.01f3e020@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 07 May 2003 07:45:37 MST." 
 <5.1.0.14.1.20030507073022.01f3e020@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


ray@comarre.com said:
> What does "difficulties making a connection" mean?

If I dial an ISP using i.e. kppp the window will show "logging on to network", 
will sit for a while, then disconnects from the modem and shows an error 
window with timeout message. Or using ifup pppx it stops with failed to 
activate with error 35.

If it does connect to the ISP then there is now data flow. Trying to open a 
website I get the error, unable to connect to remote host.

If during such condition I try to send an e-mail I get those errors, host 
unknown etc.

Two days ago before I sent the last message on this subject using kmail I 
tried to send 3 mails to individuals using exmh. All 3 ISPs I am using could 
not sent the messages except for one to @hotmail.com. This then shows up in 
/var/log/maillog as: queued for delivery.

These conditions exist usually in mid morning and mid afternoon when most 
likely the lines must be just jammed.

Regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
