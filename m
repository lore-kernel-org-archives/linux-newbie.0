From: "Simon Wu" <simonwu1@gmail.com>
Subject: what is PCI to PCMCIA adaptor device name
Date: Thu, 6 Jul 2006 14:48:58 -0400
Message-ID: <dd54e0e0607061148n5b1382e5l13dfebc5cccdf47b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hello,

I installed a PCI to PCMCIA card adaptor in my desktop PC with Fedora
3. Apparently, it is detected as Ismod shows:
yenta_socket   21705  1
rsrc_nonstatic  12737  1 yenta_socket
pcmcia_core    50013  2 yenta_socket, rsrc_nonstatic

I have a 3G wireless modem connected to th adaptor.

However, I couldn't find a device name under /dev/. Can someone tell
me what and where is the device name? Is it configurable?

Thanks,

Simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
