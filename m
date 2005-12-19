From: Andrew <ald2@arrakis.es>
Subject: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 09:11:32 +0100
Message-ID: <43A66B34.6070102@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Midwinter greetings,

I have just moved one rung up on the evolutionary scale and got myself 
an adsl connection. I am probably going to make a few relatively minor 
changes to my home lan because of this, but before going any further 
there is one issue worrying me:

The free modem my isp provided has no support under Linux so I had to 
take the router option. It's a Draytek Vigor 2500. The defect 
configuration leaves ports 20 (ftp-data),  23 (telnet) and 80 (http) 
open, the rest are stealthed (according to Shields Up). Am I right in 
thinking this is not such a good idea? I haven't yet had any success in 
trying to add rules to close these ports, and my isp 'cordially' informs 
me that this is up to me to sort out, so for the time being I am simply 
disconnecting when not in use (about 16 hours a day). Am I being 
over-paranoid?

TIA
Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
