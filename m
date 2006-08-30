From: Octavian Purdila <tavi@cs.pub.ro>
Subject: Re: Interrupt handler registration for multiple devices
Date: Wed, 30 Aug 2006 18:29:08 +0300
Message-ID: <200608301829.08747.tavi@cs.pub.ro>
References: <7783925d0608300812j2175164dja401b4e763a5ac43@mail.gmail.com>
Reply-To: tavi@cs.pub.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7783925d0608300812j2175164dja401b4e763a5ac43@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org
Cc: Rick Brown <rick.brown.3@gmail.com>, linux-newbie@vger.kernel.org

On Wednesday 30 August 2006 18:12, Rick Brown wrote:
> Hi,
>
> I want to write a driver that will handle multiple devices. These
> devices will share the IRQ line. Do I need to register my (same)
> interrupt handler as many times as the number of devices(by calling
> request_irq())?
>

No, once will suffice. However, you will need to check your devices registers 
and figure out which device triggered the interrupt.

tavi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
