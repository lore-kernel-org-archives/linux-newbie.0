From: Peter <pfheiss@philonline.com>
Subject: At Loss with Mailing
Date: Mon, 07 Apr 2003 14:33:39 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304070633.h376XdG04107@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

since about 2 weeks I can not mail anymore to certain e-mail addresses using 
exmh and my main ISP philonline.com.

Using kmail with this same ISP all the mail goes out the the same addresses.

Using exmh with my second ISP skyinet.net all the mail goes out to the same 
addresses.

What could be the explanation to this and how could it be fixed?

Here are the messages in the maillog I get from the addresses in question when 
using exmh. There are no mesages in maillog when using kmail.

Regards

----------
Peter
 
ISP philonline.com
Apr  7 09:35:00 philonline sendmail[2167]: h371Yni02164: 
to=<linux-newbie@vger.kernel.org>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:10, xdelay=00:00:10, mailer=esmtp, pri=31004, 
relay=zeus.kernel.org., dsn=5.1.2, stat=Host unknown (Name server: 
zeus.kernel.org.: host not found)

ISP skyinet.net
Apr  4 16:00:13 philonline sendmail[2182]: h347xf702179: 
to=<linux-newbie@vger.kernel.org>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:32, xdelay=00:00:06, mailer=esmtp, pri=61433, 
relay=vger.kernel.org. [209.116.70.75], dsn=2.0.0, stat=Sent (nothing 
apparently wrong in the message.; S261530AbTDDHqZ)

ISP philonline.com
Apr  7 11:53:08 philonline sendmail[2379]: h373qoF02377: 
to=<exmh-users@redhat.com>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:08, xdelay=00:00:08, mailer=esmtp, pri=30352, relay=redhat.com, 
dsn=5.1.2, stat=Host unknown (Name server: redhat.com: host not found)

ISP skyinet.net
Apr  7 14:05:00 philonline sendmail[3735]: h3764kL03732: 
to=<exmh-users@redhat.com>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:12, xdelay=00:00:12, mailer=esmtp, pri=30752, 
relay=mx1.redhat.com. [66.187.233.31], dsn=2.0.0, stat=Sent (2.0.0 
h3762Fe05386 Message accepted for delivery)

ISP philonline.com
Apr  7 11:54:15 philonline sendmail[2399]: h373sAF02397: 
to=<andrea.schulz@dw-world.de>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:04, xdelay=00:00:04, mailer=esmtp, pri=30356, relay=dw-world.de. 
[194.55.30.46], dsn=4.0.0, stat=Deferred: Connection reset by dw-world.de.

ISP skyinet.net
Apr  7 14:05:31 philonline sendmail[3740]: h373sAF02397: 
to=<andrea.schulz@dw-world.de>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=02:11:20, xdelay=00:00:11, mailer=esmtp, pri=11910356, 
relay=virus-gate.dwelle.de. [194.55.30.50], dsn=2.0.0, stat=Sent 
(castor.dwelle.de: Message accepted for delivery)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
