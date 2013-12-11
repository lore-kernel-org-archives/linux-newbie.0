From: Rajat Jain <rajatjain@juniper.net>
Subject: MODULE_ALIAS - Explain with this example?
Date: Wed, 11 Dec 2013 05:42:47 +0000
Message-ID: <648775f823934f898fc705e660f05820@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, "kernelnewbies@kernelnewbies.org" <kernelnewbies@kernelnewbies.org>, "kernelnewbies@nl.linux.org" <kernelnewbies@nl.linux.org>

Hi,

Can some one please help me understand what does the use of MODULE_ALIAS() achieve?

In the simple char driver "drivers/char/hw_random/omap-rng.c", I see the following in addition to the regular stuff.

/* work with hotplug and coldplug */
MODULE_ALIAS("platform:omap_rng");

Can some one tell me what is the above indicating?

Thanks,

Rajat

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
