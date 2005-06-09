From: Stephen Samuel <samnospam@bcgreen.com>
Subject: Re: Can't Send Mail No Longer
Date: Thu, 09 Jun 2005 08:50:44 -0700
Message-ID: <42A86554.9020002@bcgreen.com>
References: <20050607085723.E8F3323D02@ws5-3.us4.outblaze.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050607085723.E8F3323D02@ws5-3.us4.outblaze.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Bato mainit <mainit@operamail.com>, linux-newbie@vger.kernel.org

There are two possible explanations here... The least likely (but probably
neds to be investigated first) is that it's some sort of wierd problem with
your firewall that is blocking outgoing Port 25 messages.

The other, more lkiely issue is that with your new connection , your ISP
is blocking outgoing port25 connections, other than to their own server.
If you're using sendmail, then you can set the Smart Relay Host to be
your designated ISP SMTP server.

# "Smart" relay host (may be null)
DSmail.my-isp-name.net

Other mail servers can also be set in a similar manner.

The other way to test this is to use iptables to redirect outgoing SMTP
connections to go to your ISP's mailserver instead of wherever
they would normally go...

You can also use this to test the problem -- if the patch works, then you
should do the work to configure your mail servers properly...

iptables -t nat -I OUTPUT -m tcp -p tcp --dport 25 -j DNAT 
--to-destination 10.11.12.13

(( replace 10.11.12.13 with the IP address of your ISP's mail server ))

nslookup mail.myisp_name.net should probably get you a workable ip address.

Bato mainit wrote:

>Hi,
>
>In March this year I got my broadband Internet connection and I could go on sending mail as before using my ISPs.
>
>2 weeks ago the base station for my BB was hit by lighhtening and some eletronics destroyed. It took 12 days to repair and to restore my connection.
>
>After this I cannot send anymore my mail with mail programs such as exmh, mail, sylpheed or thunderbird. This is in 3 distros, knoppix, slackware and fedora 3. No problem using web mail such as operamail and no problem receiving mail.
>
>Sending mail ends in the mail queue.
>
>In /var/log/maillog I get:
>
>to=<mainit@operamail.com>, ctladdr=<root@skyinet.net> (0/0), delay=05:05:22, xdelay=00:25:12, mailer=esmtp, pri=750444, relay=operamail-com-bk.mr.outblaze.com. [205.158.62.147], dsn=4.0.0, stat=Deferred: Connection timed out with operamail-com-bk.mr.outblaze.com.
>Jun  7 16:35:04 skyinet sm-mta[1607]: j573WBYl000306: to=<bato_mainit@ispx.com.ph>, ctladdr=<heisspf@skyinet.net> (12346/100), delay=05:02:53, xdelay=00:00:00, mailer=esmtp, pri=1020462, relay=inmxsp.tri-isys.com., dsn=4.0.0, stat=Deferred: Connection timed out with inmxsp.tri-isys.com.
>
>or
>
>Jun  7 15:12:51 skyinet sm-mta[1166]: j56NthE8000246: to=<bato_mainit@ispx.com.ph>, ctladdr=<heisspf@skyinet.net> (12346/100), delay=07:17:08, xdelay=00:00:00, mailer=esmtp, pri=1110462, relay=ispx.com.ph., dsn=4.0.0, stat=Deferred: Name server: ispx.com.ph.: host name lookup failure
>
>Jun  7 15:13:34 skyinet sm-mta[1335]: gethostbyaddr(192.168.232.2) failed: 1
>
>This last entry I never saw before, that is when I could still send mail before the lightening strike.
>
>I noticed that in /etc/resolv.conf the entry now is:
>
>nameserver 203.87.128.3
>nameserver 203.87.128.4
>nameserver 203.87.132.68
>search meridiantelekoms.com
>
>whereas before the lightening strike it was only:
>
>nameserver 203.87.128.3
>search meridiantelekoms.com
>
>I have been unable to get useful information from the tech service of meridiantelekoms.
>
>Hopefully this list can help. Please send all replies to heisspf@skyinet.net
>
>Thanks & regards
>
>------
>Peter
>  
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
