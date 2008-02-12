From: murtuja bharmal <murtuja_bharmal@yahoo.com>
Subject: sysctl_ip_default_ttl is not exported in 2.6
Date: Tue, 12 Feb 2008 12:04:24 +0000 (GMT)
Message-ID: <377953.35300.qm@web95115.mail.in2.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

I m doing porting of kernel module from 2.4 to 2.6 
kernel, during the porting I came to know some of the
Exported Symbol in 2.4, is now static in 2.6, which
our kernel module is using.

Like 
sysctl_ip_default_ttl
ip_options_compile

Following is the reference link
http://lists.linuxcoding.com/kernel/2005-q2/msg17865.html

Can anyone please suggest a possible solution for the
same.
Should I need to Export These kernel symbols again in
linux 2.6 kernel code.

Murtuja



      Why delete messages? Unlimited storage is just a click away. Go to http://help.yahoo.com/l/in/yahoo/mail/yahoomail/tools/tools-08.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
