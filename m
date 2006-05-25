From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: How many times to "request_irq" when handling multiple devices
Date: Thu, 25 May 2006 15:24:07 +0530
Message-ID: <b115cb5f0605250254s10c530b6yd43ab455ad6bc2b7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi list,

This is regarding the "request_irq" function to install the interrupt handler.

int request_irq (unsigned int irq,
                       irqreturn_t (*handler)(int, void *, struct pt_regs *),
                       unsigned long irq_flags, const char * devname,
                       void *dev_id)

As per my understanding, if my driver is to handle 2 (or more)
instances of the same device (and the devices will be sharing the same
interrupt line), then I have the following options:

1) Eaither I call request_irq() once for each device during device
initialization, and in each call pass a different dev_id paremeter to
identify the particular device. This way, my handler would be
registered multiple times with the same irq line and hence whenever
any one of the devices raises an interrupt, my handler would be called
n number of times. I have to determine which device actually
interrupted and service it.

2) OR, I register my handler just once during driver initialization
and pass no dev_id. So when any of the devices raises the interrupt,
my handler will be called only once and I have to again find out which
device interrupted and service it.

My doubts:

1) Is my understanding coorect? Will both of the options work fine?
2) How do drivers do it?
3) Isn't approach 2 better than approach 1?

TIA,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
