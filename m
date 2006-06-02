From: Peter <heisspf@skyinet.net>
Subject: Re: Symlink to Modem Vanishes
Date: Fri, 02 Jun 2006 14:08:22 +0800
Message-ID: <200606020608.k5268MoK004233@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

slackware 10.2 kernel 2.6.16

heisspf@skyinet.net indirectly said:
> What I  needed was a file named 10-local.rules placed in the /sda3/etc/udev/
> rules.d  subdirectory. All the file needed was the line following:

> KERNEL="ttyS0", SYMLINK="modem"

> Now the modem node in the /dev directory doesn't vanish anymore.

> Will try it on next reboot

It does not work, NAME="/dev/ttyS0" has to be added. However doing this then 
there are no /dev/ttyS*. Symlink /dev/modem points to a non existing file.

Now I found that /dev/ttyS0 is a symlink to /dev/tts/0. So I changed 
NAME="/dev/tts/0" with the effect that then there is no /dev/tts/0 but only 1, 
2 and 3.

Now I am totally confused and back to rc.local command, ln -s /dev/ttyS0 
/dev/modem.

Is there somebody to whom this males sense?

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
