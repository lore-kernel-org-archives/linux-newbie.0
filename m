From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: hang on shutdown
Date: Wed, 30 Jun 2004 09:38:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40E26DF8.1010801@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Good day,

Mandrake 10, 2.6.3; PIV

When shutting down or rebooting, the machine hangs after the following 
message:

Stopping hotplug: uhci_hcd 0000:00:1f2: remove, state 1
usb usb1: USB disconnect, address 1
uhci_hcd 0000:00:1f2: USB bus 1 deregistered

The next time I boot I have to go through the rigmarole of a forced file 
check followed by an automatic reboot (which luckily or by design works OK).

Any ideas?
TIA
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
