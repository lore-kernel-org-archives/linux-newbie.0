From: mike <mike@kevino.org>
Subject: Re: hang on shutdown
Date: Wed, 30 Jun 2004 21:22:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40E3916E.90701@kevino.org>
References: <40E26DF8.1010801@arrakis.es>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40E26DF8.1010801@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Andrew does your motherboard have a via chipset? If so take a look
at the Mandrake errata page.
http://www.mandrakelinux.com/en/errata.php3

Mike


Andrew Langdon-Davies wrote:
> Good day,
>
> Mandrake 10, 2.6.3; PIV
>
> When shutting down or rebooting, the machine hangs after the following
> message:
>
> Stopping hotplug: uhci_hcd 0000:00:1f2: remove, state 1
> usb usb1: USB disconnect, address 1
> uhci_hcd 0000:00:1f2: USB bus 1 deregistered
>
> The next time I boot I have to go through the rigmarole of a
forced file
> check followed by an automatic reboot (which luckily or by design
works
> OK).
>
> Any ideas?
> TIA
> Andrew
>
> -
> To unsubscribe from this list: send the line "unsubscribe
linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
