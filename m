From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: firewall blocks ppp0?
Date: Sun, 24 Nov 2002 12:02:57 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE10641.5A70C2DF@gelm.net>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------3637FA4FE80086AB2A08BE64"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
To: Linux Newbie <linux-newbie@vger.kernel.org>

This is a multi-part message in MIME format.
--------------3637FA4FE80086AB2A08BE64
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

How/why did your message arrive as

From:    Haines Brown <brownh@hartford-hwp.com>  Sat 6:55 PM
Subject: firewall blocks ppp0?
     To: linux-newbie@hartford-hwp.com
                     ^^^^^^^^^^^^^^^^^
                      ???????????????

This does not allow a 'reply all'    :-(

Dear Haines Brown:

 I use Roaring Penguin PPPOE. http://www.roaringpenguin.com/pppoe/
I selected permanent connection, but I am unsure if this applies
to eth# or ppp#. :-|  'adsl-setup' and 'adsl-start' are script
names with my application (Roaring Penguin).  I am assuming that
your using the same or similar.

 How do you know "I definitely have eth0 set to be permanently
 up" ?  Actually, I'm betting that it is ppp# that is set to
 demand or permanent.

 It seems that your dsl connection (PPPOE?) application is
setting up IPCHAINS, but your kernel is using IPTABLES.

You can:

- reconfigure (make config) your kernel to use IPCHAINS.

- configure IPTABLES to replace your dsl-connection application's
  attempt to use IPCHAINS.

HTH, Chuck

Haines Brown wrote:
> 
> I'm setting up a copy of RedHat 8.0 on a machine that is intended as a
> standalone machine with DSL access to Internet.
> 
> I have eth0 up and running, and did the adsl-setup with my usual valid
> information. The problem comes trying to make ppp0 active. It tries,
> but cycles between active and inactive.
> 
> When I run adsl-start with debugging, it tells me that I'm set up for
> demand-connection. I definitely have eth0 set to be permanently
> up. Does this alert refer instead to ppp0? If so, perhaps this is what
> I'd expect. Is that right?
> 
> I'm also told: ipchains: Protocol not available
> 
> That sounds to me as if my firewall (which I set to be "high"
> protection), may be blocking the ppp protocol. Does this seem to be
> the case?
> 
> I went to pursue this, and ran ipchains -L, but got the error message
> that this command is incompabible with my kernel.
> 
> What to do?
> 
> Haines Brown
--------------3637FA4FE80086AB2A08BE64
Content-Type: message/delivery-status;
 name="nsmail8M.TMP"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="nsmail8M.TMP"

Reporting-MTA: dns; mailhost1-sfldmi.ameritech.net
Arrival-Date: Sun, 24 Nov 2002 11:48:59 -0500
Received-From-MTA: dns; gelm.net (66.72.131.210)

Final-Recipient: RFC822; <linux-newbie@hartford-hwp.com>
Action: failed
Status: 5.1.1
Remote-MTA: dns; inbound.registeredsite.com (64.224.219.122)
Diagnostic-Code: smtp; 550 5.1.1 <linux-newbie@hartford-hwp.com>... User Unknown...[EOF]


--------------3637FA4FE80086AB2A08BE64
Content-Type: message/rfc822;
 name="nsmailIN.TMP"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="nsmailIN.TMP"

Received: from gelm.net ([66.72.131.210]) by mailhost.det2.ameritech.net
          (InterMail vM.4.01.02.17 201-229-119) with ESMTP
          id <20021124164858.ZCOG28949.mailhost.det2.ameritech.net@gelm.net>;
          Sun, 24 Nov 2002 11:48:58 -0500
Message-ID: <3DE102FA.85D8F85D@gelm.net>
Date: Sun, 24 Nov 2002 11:48:58 -0500
From: Chuck Gelm <nc8q@gelm.net>
X-Mailer: Mozilla 4.61 [en] (Win98; I)
X-Accept-Language: en
MIME-Version: 1.0
To: Haines Brown <brownh@hartford-hwp.com>
CC: linux-newbie@hartford-hwp.com
Subject: Re: firewall blocks ppp0?
References: <200211232355.gANNtx703441@hartford-hwp.com>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Dear Haines Brown:

 I use Roaring Penguin PPPOE. http://www.roaringpenguin.com/pppoe/
I selected permanent connection, but I am unsure if this applies
to eth# or ppp#. :-|  'adsl-setup' and 'adsl-start' are script
names with my application (Roaring Penguin).  I am assuming that
your using the same or similar.

 How do you know "I definitely have eth0 set to be permanently
 up" ?  Actually, I'm betting that it is ppp# that is set to
 demand or permanent.

 It seems that your dsl connection (PPPOE?) application is
setting up IPCHAINS, but your kernel is using IPTABLES.

You can:

- reconfigure (make config) your kernel to use IPCHAINS.

- configure IPTABLES to replace your dsl-connection application's
  attempt to use IPCHAINS.

HTH, Chuck

Haines Brown wrote:
> 
> I'm setting up a copy of RedHat 8.0 on a machine that is intended as a
> standalone machine with DSL access to Internet.
> 
> I have eth0 up and running, and did the adsl-setup with my usual valid
> information. The problem comes trying to make ppp0 active. It tries,
> but cycles between active and inactive.
> 
> When I run adsl-start with debugging, it tells me that I'm set up for
> demand-connection. I definitely have eth0 set to be permanently
> up. Does this alert refer instead to ppp0? If so, perhaps this is what
> I'd expect. Is that right?
> 
> I'm also told: ipchains: Protocol not available
> 
> That sounds to me as if my firewall (which I set to be "high"
> protection), may be blocking the ppp protocol. Does this seem to be
> the case?
> 
> I went to pursue this, and ran ipchains -L, but got the error message
> that this command is incompabible with my kernel.
> 
> What to do?
> 
> Haines Brown
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


--------------3637FA4FE80086AB2A08BE64--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
