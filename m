From: Ray Olszewski <ray@comarre.com>
Subject: Re: At Loss with Mailing
Date: Thu, 08 May 2003 20:54:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030508204848.01f7ad00@celine>
References: <Your message of "Wed, 07 May 2003 07:45:37 MST."  <5.1.0.14.1.20030507073022.01f3e020@celine>
 <5.1.0.14.1.20030507073022.01f3e020@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305090130.h491Uvb03516@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:30 AM 5/9/2003 +0800, Peter wrote:

>ray@comarre.com said:
> > What does "difficulties making a connection" mean?
>
>If I dial an ISP using i.e. kppp the window will show "logging on to 
>network",
>will sit for a while, then disconnects from the modem and shows an error
>window with timeout message. Or using ifup pppx it stops with failed to
>activate with error 35.
>
>If it does connect to the ISP then there is now data flow. Trying to open a
>website I get the error, unable to connect to remote host.
>
>If during such condition I try to send an e-mail I get those errors, host
>unknown etc.
>
>Two days ago before I sent the last message on this subject using kmail I
>tried to send 3 mails to individuals using exmh. All 3 ISPs I am using could
>not sent the messages except for one to @hotmail.com. This then shows up in
>/var/log/maillog as: queued for delivery.
>
>These conditions exist usually in mid morning and mid afternoon when most
>likely the lines must be just jammed.


OK. Well, I think it is stating the obvious, but if you are having trouble 
connecting to your ISP, doing DNS resolution, and reaching Web sites ... 
asking what the problem is with your e-mail seems kind of the wrong place 
to be focusing your attention. You need to concentrate on the actual 
problem, which may be with the phone service, the ISPs, or your router or 
host (unlikely but just barely possible). Your guess about the source of 
the problem is a plausible one.

The one message to hotmail was, from your description, not really sent out. 
Your on-host MTA accepted it from the MUA you use. But it could not connect 
to hotmail so queued it up to try to reend later (that's how SMTP MTAs are 
supposed to work, since the protocol dates back to a time when connections 
routinely were not 24/7, even for the major sites of the time).

In any case, Peter, this certainly does not describe a problem with e-mail 
as such.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
