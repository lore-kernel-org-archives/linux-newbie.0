From: G Anna <drguruolai@eth.net>
Subject: char-major-6
Date: 19 Apr 2002 09:25:55 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3662o5ol0.fsf@wobble.eth.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Dear All,

When I try to do

# /etc/rc.d/init.d/lpd start
Starting lpd: Warning - test: \ 
cannot open lp device '/dev/lp0' - No such device

[I broke the line into two.]

And in the /var/log/messages file I have

Apr 19 09:19:05 wobble modprobe: modprobe: Can't locate module char-major-6
Apr 19 09:19:05 wobble lpd: lpd startup succeeded

Can anybody tell me, which config option is this char-major-6?

I am using RH 7.1,

$ uname -a
Linux wobble 2.4.16 #2 Fri Apr 19 01:09:19 IST 2002 i686 unknown

Thanks for all the help.

Cheers,
anna

-- 

Get your free e-mail account at http://www.linuxmail.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
