From: Chuck Gelm <nc8q@gelm.net>
Subject: Belkin F5D6020: part 2
Date: Thu, 05 Dec 2002 16:48:52 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DEFC9C4.D72896A3@gelm.net>
References: <20021204170342.DLHH12667.smtp02.fuse.net@smtp.fuse.net> <3DEE8818.14942C06@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Howdy, Y'all:

Belkin F5D6020: part 2

 Slackware v8.0, kernel 2.2.19, Dell Latitude XPi CD,
pentium 166, 1.1 Gigabyte HD, 16 megabytes RAM,
Belkin F5D6020 PC-card, linux-wlan-0.1.16-pre7:

#root@dell:/# /etc/rc.d/rc.wlan start
Starting WLAN Devices: wlanctl-ng: No such device
Failed to enable the device, exitcode = 1.
grep /proc/net/p80211/wlan0/wlandev: No such file or directory
wlanctl-ng: No such device
dot11PrivacyOptionImplemented mibget failed.
wlanctl-ng: No such device
error: Autojoin indicated failure!

 What am I committing or omitting?

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
