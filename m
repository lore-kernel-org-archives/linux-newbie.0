From: Simon <simon@highlyillogical.org>
Subject: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 14:54:42 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171454.42606.simon@highlyillogical.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I recently (yesterday) upgraded my home internet connection from BT ADSL
(512k/256k), to NTL Cable(1Mb/256k), for the extra speed. However,
for the next 30 days I seem to be the owner of two broadband connections in
my home.

I have a linux (2.4.19) box running as the gateway for my home
network, and it's doing masquerading over eth1, which is the connection to
the cable modem. ppp0 is the connection to the ADSL, but is no longer used. 
(The internal net hangs off eth0)

Is there a clever trick I can do, to allow my home net to use the available
bandwidth on both connections? It would be weird, as they would both have a
very different real-world IP... But is it in any way possible? Seems a shame 
to have this bandwidth knocking about unused.

Simon



--
This message has been scanned for viruses and dangerous content, and
is believed to be clean.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
