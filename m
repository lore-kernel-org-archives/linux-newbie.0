From: vh <vhlist@yandex.ru>
Subject: Opti 82c931 ISA PnP sound card
Date: Tue, 15 Jul 2003 22:32:00 +0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <98964296.20030715223200@yandex.ru>
Reply-To: vh <vhlist@yandex.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Does anybody have experience in configuring Opti 82c931 chipset sound
card in Slackware 8.1. Red Hat configuration utility automatic
determines this one as "Opti Audio 16", but I'm able to hear only a part
(for about a second) of sample sound (on my friend's computer with the
same distro the sample was longer). The successful configuration from
NT 4.0 WS is
 IRQ7 IO 530h DMA1 (playback) and DMA0 (Record)
 IRQ 2/9 (what does it mean?) and IO 330h for MPU-401
I configured isapnp with such parameters (I set MPU-401 IRQ to 5), but
setting this in Sound Configuration Utility failed.

Can somebody help me with this Plug&Pray one?

-- 
Best regards,
 Martchukov Anton aka VH                  mailto:vhlist@yandex.ru

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
