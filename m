From: Hubert Chaumette <hubert.chaumette@wanadoo.fr>
Subject: wl1271 driver on Linux 3.10 for SabreSD
Date: Wed, 8 Oct 2014 12:07:37 +0200 (CEST)
Message-ID: <842801523.8397.1412762857731.JavaMail.www@wwinf1j21>
Reply-To: Hubert Chaumette <hubert.chaumette@wanadoo.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I need to activate the wl12xx driver (from drivers/net/wireless/ti/) on a (Android) Linux 3.10.31 kernel on an i.MX6Q SabreSD board. The wl1271 is to communicate with the board through an SDIO interface (SD2 on the board).

I have built the driver modules (cfg80211 and mac80211; wlcore, wlcore_sdio and wl12xx), and insmod'ed them. They are listed by lsmod :
wlcore_sdio 3820 0 - Live 0x00000000
wl12xx 51103 0 - Live 0x00000000
wlcore 161008 1 wl12xx, Live 0x00000000
mac80211 253798 2 wl12xx,wlcore, Live 0x00000000
cfg80211 201451 2 wlcore,mac80211, Live 0x00000000

dmesg shows only a message from cfg80211 (no errors for other modules, when insmod'ed in the right order) :
cfg80211: Calling CRDA to update world regulatory domain

1) Can I use /sys/modules/{wlcore,wlcore_sdio,wl12xx}/ to test it ?
2) The board uses the device tree to enumerate platform devices. To correctly activate the driver, do I need to add it to the board DT (and a binding to the driver) ?
3) The driver is supposed to use a firmware (according to http://wireless.kernel.org/en/users/Drivers/wl12xx), how do I know whether it found it (no kernel log message) (I've put the firmware in /system/etc/firmware/) ?

Thanks in advance.
Regards,

Hubert
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
