From: "Serrato Moreno, Carlos" <carloss@ti.com>
Subject: devm_gpio_request_one not exported
Date: Wed, 5 Sep 2012 17:11:30 +0000
Message-ID: <95E3FF003A6B2A4A9766E6CADAAEA9E340CA2C@DFLE09.ent.ti.com>
References: <95E3FF003A6B2A4A9766E6CADAAEA9E340C852@DFLE09.ent.ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <95E3FF003A6B2A4A9766E6CADAAEA9E340C852@DFLE09.ent.ti.com>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>

Hello,

I wonder why devm_gpio_request_one in drivers/gpio/devres.c  is not exported as devm_gpio_free and devm_gpio_request are.

Regards.

Carlos.






--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
