From: Peter <pfheiss@philonline.com>
Subject: Re: Mailer Connections
Date: Thu, 15 Aug 2002 09:09:20 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208150109.JAA01124@philonline.com>
References: <rhw@InfraDead.Org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Riley Williams <rhw@InfraDead.Org> 
   of "Wed, 14 Aug 2002 06:18:10 +0100." <Pine.LNX.4.21.0208140600380.8397-100000@Consulate.UFP.CX> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbies <linux-newbie@vger.kernel.org>

Thanks again Riley, apparently you are leaving in the UK.

 said:
> The top "Received:" line gives the critical evidence when it reports
> "helo=localhost.localdomain" as this states that your system's
> hostname is currently set up as localhost.localdomain as stated, and
> this is also confirmed both by the bottom "Received:" line and by the
> "From:" line. As you can see, this is wrong.

I never had to edit /etc/sysconfig/network in all previous versions of RH. 
Some kind program was doing the right thing for me. I only had to edit 
/etc/hosts. Now when I had to re-install RH7.1 things went wrong. When I tried 
to edit in /etc/hosts the line: "127.0.0.1       localhost.localdomain	
localhost" to
"127.0.0.1	localhost" I could not print any longer and on booting, section 
starting lpd, I would get a long complain not finding the printer.

I now then checked in RH6.2 /etc/sysconfig/network and it said there 
HOSTNEAME="Peter". I put that into RH7.1 and now after your last mail changed 
/etc/hosts
to: 
127.0.0.1       localhost
202.95.238.2    philonline.com  Peter
202.78.74.68    webcard.skyinet.net     Pedro

Printer prints now and no complains on booting about lpd. I assume my from 
address should be correct as well now.

I assume that you received my last mail twice. When I sent it the first time 
and had changed HOSTNAME to "Peter" from localhost.localdomain I had not 
rebooted as you suggested and I got the following messages in /var/log/maillog:

Aug 13 14:03:45 localhost sendmail[2687]: OAA02685: 
to=<linux-newbie@vger.kernel.org>, ctladdr=<pfheiss@localhost.localdomain> 
(500/500), delay=00:00:08, xdelay=00:00:05, mailer=esmtp, 
relay=vger.kernel.org. [209.116.70.75], stat=Data format error

Aug 13 14:03:54 localhost sendmail[2687]: OAA02685: to=<rhw@InfraDead.Org>, 
ctladdr=<pfheiss@localhost.localdomain> (500/500), delay=00:00:17, 
xdelay=00:00:09, mailer=esmtp, relay=phoenix.infradead.org. [195.224.96.167], 
stat=Sent (OK id=17eUmE-0008Fi-00)

after rebooting:

Aug 13 14:42:08 philonline sendmail[1158]: OAA01156: 
to=<linux-newbie@vger.kernel.org>, ctladdr=<pfheiss@philonline.com> (500/500), 
delay=00:00:11, xdelay=00:00:09, mailer=esmtp, relay=vger.kernel.org. 
[209.116.70.75], stat=Sent (2.7.0 nothing apparently wrong in the message.)

Aug 13 14:42:16 philonline sendmail[1158]: OAA01156: to=<rhw@InfraDead.Org>, 
ctladdr=<pfheiss@philonline.com> (500/500), delay=00:00:19, xdelay=00:00:08, 
mailer=esmtp, relay=phoenix.infradead.org. [195.224.96.167], stat=Sent (OK 
id=17eVNM-0008RL-00)

You can see that after rebooting my address is correct. You replied to the 
first message where From: was wrong yet.

Did a programmer change something that one has to edit now 
/etc/sysconfig/network a file I did not even know it existed or did I miss 
something when installing RH7.1?

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
