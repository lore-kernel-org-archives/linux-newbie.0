From: chuck gelm <chuck@gelm.net>
Subject: tcpdump: How do I filter 'bootp' packets?
Date: Wed, 08 Dec 2004 08:13:32 -0500
Message-ID: <41B6FDFC.3070309@gelm.net>
References: <Pine.LNX.4.21.0412080338310.623-100000@hestia> <Pine.LNX.4.21.0412080338310.623-100000@hestia> <5.1.0.14.1.20041207220544.01f98370@celine>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20041207220544.01f98370@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Howdy:

  I have cable modem access to the internet now and the download speed is
double my original DSL speed.  :-)    However, I am concerned about
security.

  Can other cable modem subscribers see my packets?

  To test this, I am trying to use tcpdump to monitor packets that my
cable modem is sending to my 'router'.

  I am using these arguments:
tcpdump -i eth1 -c 9 -nt not arp and not host W.X.Y.Z > \ 
http://gelm.net/tcpdump.txt


  (<W.X.Y.Z> == My assigned IP address)

  I am still seeing many 'bootp' packets.

How do filter out 'bootp' packets with tcpdump?

Regards, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
