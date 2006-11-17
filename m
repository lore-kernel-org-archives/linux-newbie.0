From: Peter <heisspf@skyinet.net>
Subject: Sound Messages
Date: Fri, 17 Nov 2006 14:53:29 +0800
Message-ID: <200611170653.kAH6rTrW002352@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

After I upgraded from slackware-10.2 to sw-11
playing a sound I get a message in xterm as well as one send to the mailbox:

In xterm

@~:$ .growl

Input Filename : /home/peter/sound/growl.wav
Sample Size : 8-bits
Sample Encoding: unsigned
Channels : 1
Sample Rate : 22050

Time: 00:01.53 [00:00.00] of 00:01.53 ( 100.0%) Output Buffer: 67.39K

In the Mail

Subject: cron: cd /usr/local/saytime/sounds/; ./saytime.sh

Input Filename : /home/peter/sound/saytemp
Sample Size : 8-bits
Sample Encoding: u-law
Channels : 1
Sample Rate : 8000


Time: 00:01.02 [00:00.00] of 00:00.00 ( 0.0%) Output Buffer: 44.98K
Time: 00:02.05 [00:00.00] of 00:00.00 ( 0.0%) Output Buffer: 90.14K
Time: 00:03.02 [00:00.00] of 00:00.00 ( 0.0%) Output Buffer: 132.82K

Done.

Why is this and how can it be stopped especially those messages send to the 
mailbox?

Thanks & regards

-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
