From: "Peter H." <heisspf@skyinet.net>
Subject: Disconnect from ISP when idle
Date: Sun, 22 Aug 2004 11:12:00 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040822031200.5F5CB3ECFB@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

When I used RedHat 7.3 and earlier versions in /etc/ppp/options I put the 
entry "idle 300" which caused the connection to the Internet to disconnect 
after 300 seconds when there were no more packets coming in or out using 
wvdial.

This was useful in case one forgot to disconnect after e.g. a download was 
finished.

Now I am using slackware and kppp to connect and this feature does not seem to 
work any longer. There is no more disconnection after 300 (or any number) 
seconds when idle.

cat /etc/ppp/options

lock
defaultroute
idle 300
noipdefault
modem
/dev/modem
19200
crtscts
passive
asyncmap 0

Is there another way with kppp to get the idle option back and how?

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
