From: heisspf@skyinet.net
Subject: (unknown)
Date: Thu,  5 Feb 2004 15:03:45 +0800 (PHT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040205070345.B1D5E5BC46@smtp2.skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

--------
Hi,
Resent-Date: Thu, 5 Feb 2004 15:11:34 +0800
Resent-From: Peter <heisspf@skyinet.net>
Subject: Bad Sound in Slackware
Resent-Message-Id: <20040205151134.416d3286@skyinet.net>
Resent-To: linux-newbie@vger.kernel.org

In Slackware 9.1 I have a very annoying distorted sound which I am unable to 
correct.

My RH9.0 and SW9.1 have the same kernel and the same settings in sound. Both 
have the same /etc/module.conf.

SW lsmod gives:

Module                  Size  Used by    Not tainted
snd-pcm-oss            37252   0  (unused)
snd-mixer-oss          11992   0  [snd-pcm-oss]
uhci                   24496   0  (unused)
ehci-hcd               16872   0  (unused)
usbcore                58400   1  [uhci ehci-hcd]
snd-via82xx            11712   0 
snd-pcm                55904   0  [snd-pcm-oss snd-via82xx]
snd-timer              13252   0  [snd-pcm]
snd-ac97-codec         37240   0  [snd-via82xx]
snd-page-alloc          6004   0  [snd-via82xx snd-pcm]
snd-mpu401-uart         3136   0  [snd-via82xx]
snd-rawmidi            12512   0  [snd-mpu401-uart]
snd-seq-device          3920   0  [snd-rawmidi]
snd                    27460   0  [snd-pcm-oss snd-mixer-oss snd-via82xx 
snd-pcm snd-timer snd-ac97-codec snd-mpu401-uart snd-rawmidi snd-seq-device]
soundcore               3332   4  [snd]
pcmcia_core            40032   0 
ide-scsi                9424   0 
agpgart                39576   0  (unused)

RH lsmod gives:

Module                  Size  Used by    Not tainted
via82cxxx_audio        22136   0 (autoclean)
ac97_codec             15464   0 (autoclean) [via82cxxx_audio]
soundcore               5604   2 (autoclean) [via82cxxx_audio]
parport_pc             17732   1 (autoclean)
lp                      8128   0 (autoclean)
parport                32064   1 (autoclean) [parport_pc lp]
apm                    12264   2
irlan                  24276   0 (unused)
irda                  107568   0 [irlan]
ipchains               48784  13
keybdev                 2784   0 (unused)
mousedev                5396   0 (unused)
hid                    23972   0 (unused)
input                   5184   0 [keybdev mousedev hid]
ehci-hcd               19272   0 (unused)
usbcore                71488   1 [hid ehci-hcd]


What could be the reason for the distorted sound in SW and how could it be 
corrected.

Thanks & regards

-- 
Peter




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
