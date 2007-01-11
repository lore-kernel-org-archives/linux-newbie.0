From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: ioport_resource / iomem_resource - PCI specific?
Date: Thu, 11 Jan 2007 07:46:14 +0530
Message-ID: <b115cb5f0701101816s55db0fecqaa38153b7bc1b83a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I have a doubt regarding the following definitions in kernel/resource.c:

struct resource ioport_resource = {
        .name   = "PCI IO",
        .start  = 0x0000,
        .end    = IO_SPACE_LIMIT,
        .flags  = IORESOURCE_IO,
};

struct resource iomem_resource = {
        .name   = "PCI mem",
        .start  = 0UL,
        .end    = ~0UL,
        .flags  = IORESOURCE_MEM,
};

Aren't the symbols ioport_resource and iomem_resource meant for
"generic" resource management for all buses / devices? If yes, then
why their names have "PCI" tagged to them?

Just Curious,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
