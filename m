From: Peter <heisspf@skyinet.net>
Subject: Sending Mail Problem
Date: Tue, 21 Jun 2005 14:17:34 +0800
Message-ID: <20050621141734.05a8f4c8@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

As reported earlier I suddenly could not sent mail any longer with my new
BroadBand connection using my former ISPs. It had worked well for over 2
months.

After some adjustments I can send mail now with Sylpheed and Thunderbird,
however, not with mail or exmh my 2 main mailing programs.

In sylpheed and Thunderbrid I had to enter for smtp server (send)
"smtp.meridian.ph".

To use mail or exmh for sending mail where would I have to make the
corrections? 

Trying to send mail with those 2 programs they end now in the mailq.

mailq:
 /var/spool/mqueue (1 request)
-----Q-ID-----     --Size-------Q-Time-----------------Sender/Recipient--
j5L2cW0T001279*   9 Tue Jun 21 10:38 <heisspf@meridian.ph>                    
                                                         <heisspf@skyinet.net>

tail -c 10 /var/log/maillog:

Jun 21 10:42:43 localhost sm-mta[1231]: j5L2XGA6001229:
to=<heisspf@skyinet.net>, ctladdr=<heisspf@meridian.ph> (12346/100),
delay=00:09:27, xdelay=00:09:27, mailer=esmtp, pri=120457,
relay=mx1.skyinet.net. [202.78.116.252], dsn=4.0.0, stat=Deferred: Connection
timed out with mx1.skyinet.net.

I am using slackware 10.1.

Thanks & regards

----
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
