From: Alan Cox <alan@lxorguk.ukuu.org.uk>
Subject: Re: Interrupt handler registration for multiple devices
Date: Wed, 30 Aug 2006 20:38:35 +0100
Message-ID: <1156966715.6271.211.camel@localhost.localdomain>
References: <7783925d0608300812j2175164dja401b4e763a5ac43@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0608300812j2175164dja401b4e763a5ac43@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org, linux-kernel@vger.kernel.org

Ar Mer, 2006-08-30 am 20:42 +0530, ysgrifennodd Rick Brown:
> Hi,
> 
> I want to write a driver that will handle multiple devices. These
> devices will share the IRQ line. Do I need to register my (same)
> interrupt handler as many times as the number of devices(by calling
> request_irq())?

Up to you. If you are working with standard devices that need no special
handling to share interrupts (eg PCI bus), the device model makes it
more natural to do that and let the kernel call your handler once for
each device (passing a different dev_id).


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
