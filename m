From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: wireless configuration
Date: Fri, 08 Aug 2003 12:45:30 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <729f4972a22c.72a22c729f49@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I just installed a wireless network card (Linksys WPC11 Instant wireless PC Card). I am using the hostap driver for it as I require it for a project I am doing. The driver loads correctly. The lsmod shows that it has loaded.

The thing is that when I execute the 'iwpriv' command, it doesn;t see the wlan0 interface (which I guess the the wireless networt interface).
Also, in the /etc/sysconfig/network-scripts , I dont see the configuration script for wlan0 (ifcfg-wlan0 is the name for it I guess).

What do I do here?
If you need more information, please let me know.

Thanks
Anshuman

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
