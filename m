From: Chuck Gelm <nc8q@gelm.net>
Subject: Belkin F5D6020: Is this a prism card?
Date: Wed, 04 Dec 2002 17:56:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DEE8818.14942C06@gelm.net>
References: <20021204170342.DLHH12667.smtp02.fuse.net@smtp.fuse.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Howdy, Y'all:

 I plugged a Belkin F5D6020 PC card into a slackware 8.0
kernel 2.2.19 laptop and this is what it reported:

cardmgr[49] initializing socket 1
cardmgr[49] unsupported socket 1 product info "Belkin",
            "11Mbps-Wireless-Notebook-Network-Adapter
cardmgr[49] manfid, 0x01bf, 0x3302  function: 6 (network)

 I'm building a kernel now, but ..

 When I first ran linux-wlan-ng-0.1.16-pre7/.Configure
it complained about not finding /usr/src/pcmcia-cs-3.1.26 (IIRC).
Where/how do I obtain /usr/src/pcmcia-cs-3.1.26/*  ?

Thanks, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
