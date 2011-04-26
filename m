From: lina <lina.lastname@gmail.com>
Subject: configuration the kernel
Date: Tue, 26 Apr 2011 17:40:14 +0800
Message-ID: <BANLkTinyPyC=zkPmxuZ7V5xMht9WefTEvw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=ldZ55H0n6SvdUZ2MuE3jOKsoTa+lcYeMsNiJLwdhY2g=;
        b=QdMwOmI7Kgu9ZDUyeVEzope1QVJZajPSOUcHVDCfipcuPFuhhihQGRQkca6GYi+9d3
         KsUgouduuJalXKaSOllhoI1/tK9QZwyzZt2Mv4/J/sLoSagF1XVxuQyTpnd94NzeAMBa
         eSkC6ZH6YU1X07qujDubiJpvYafUUvHUz5Qso=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

can anybody give me some specific clues during configuration which
make the support of below graphic driver and network connection. if
possible wireless will be great appreciated.

and which is the best version of kernel I should choose.

Really thanks for any advice,


# lspci

00:00.0 Host bridge: Intel Corporation Sandy Bridge DRAM Controller (rev 09)
00:01.0 PCI bridge: Intel Corporation Sandy Bridge PCI Express Root
Port (rev 09)
00:01.1 PCI bridge: Intel Corporation Sandy Bridge PCI Express Root
Port (rev 09)
00:16.0 Communication controller: Intel Corporation Cougar Point HECI
Controller #1 (rev 04)
00:1a.0 USB Controller: Intel Corporation Cougar Point USB Universal
Host Controller #5 (rev 05)
00:1a.7 USB Controller: Intel Corporation Cougar Point USB Enhanced
Host Controller #2 (rev 05)
00:1b.0 Audio device: Intel Corporation Cougar Point High Definition
Audio Controller (rev 05)
00:1c.0 PCI bridge: Intel Corporation Cougar Point PCI Express Root
Port 1 (rev b5)
00:1c.1 PCI bridge: Intel Corporation Cougar Point PCI Express Root
Port 2 (rev b5)
00:1c.2 PCI bridge: Intel Corporation Cougar Point PCI Express Root
Port 3 (rev b5)
00:1d.0 USB Controller: Intel Corporation Cougar Point USB Universal
Host Controller #1 (rev 05)
00:1d.7 USB Controller: Intel Corporation Cougar Point USB Enhanced
Host Controller #1 (rev 05)
00:1f.0 ISA bridge: Intel Corporation Cougar Point LPC Controller (rev 05)
00:1f.2 IDE interface: Intel Corporation Cougar Point 4 port SATA IDE
Controller (rev 05)
00:1f.3 SMBus: Intel Corporation Cougar Point SMBus Controller (rev 05)
01:00.0 VGA compatible controller: ATI Technologies Inc NI Whistler
[AMD Radeon HD 6600M Series]
01:00.1 Audio device: ATI Technologies Inc Device aa90
02:00.0 Ethernet controller: Broadcom Corporation NetXtreme BCM57765
Gigabit Ethernet PCIe (rev 10)
02:00.1 SD Host controller: Broadcom Corporation Device 16bc (rev 10)
03:00.0 Network controller: Broadcom Corporation Device 4331 (rev 02)
04:00.0 FireWire (IEEE 1394): Agere Systems FW643 PCI Express1394b
Controller (PHY/Link) (rev 08)


best regards,

lina
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
