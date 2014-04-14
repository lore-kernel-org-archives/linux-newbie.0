From: Faerbit <faerbit@gmail.com>
Subject: Hibernation problem with the new 3.14 Kernel
Date: Mon, 14 Apr 2014 20:50:01 +0200
Message-ID: <534C2DD9.1070006@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=QNIOSwgvI141qh8qNnEG3PjHOKj/VPaenzTvrfi0kNc=;
        b=yCEvBfUMrow3OyXizlvvfm9mr4EGDQ8XBzgFNFini9bbRuFlqkIsLP3iqPdLNO+nbm
         UAOM7Z1QKmR6jFbgwrXigNMxQHHprztcLD3sMuCywazwWLCGVcIcGxT6of2rEqRvBOLm
         N4ILYYQooBAIaglG5v/emI76nar5NHbnlhGhmhYQ0trt0WYBm14JRfyyqOB5+jWSc9/0
         3AFJSuCKdO4yZoyXgN10aARX9U6Gs5XSR/uew4IT/etGDZ2VpLTed0lvyftiXO6vd/Hh
         vgvZrrIG6Sd1qQtDqrU8wdIu5gpH7nZAv1KXspkh+CmGCq1Tzv17gYtL0Txxt4uYlFUj
         +y4w==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi everyone,

I hope I am posting in the right section.
Since the upgrade to kernel 3.14 I am unable to hibernate.
I am using Archlinux.
I am hibernating with "systemctl hibernate".
It always fails to freeze device 00:08:

journalctl tells me:
kernel: serial 00:08: disable failed
kernel: dpm_run_callback(): pnp_bus_freeze+0x0/0x20 returns -5
kernel: PM: Device 00:08 failed to freeze: error -5

lspci -v tells me:

0:08.0 PCI bridge: NVIDIA Corporation MCP78S [GeForce 8200] PCI Bridge
(rev a1) (prog-if 01 [Subtractive decode])
    Flags: bus master, 66MHz, fast devsel, latency 0
    Bus: primary=00, secondary=01, subordinate=01, sec-latency=64
    Capabilities: [b8] Subsystem: ASUSTeK Computer Inc. Device 82e7
    Capabilities: [8c] HyperTransport: MSI Mapping Enable+ Fixed-

My mainboard is a ASUS M4N98TD EVO.

What does error code -5 mean? How do I debug this further? Should I file
a bug?

Cheers,

Faerbit


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
