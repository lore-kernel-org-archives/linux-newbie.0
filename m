From: chuck gelm <chuck@gelm.net>
Subject: Abstract Control Module/Communications Device Class
Date: Sun, 30 Jan 2005 10:19:03 -0500
Message-ID: <41FCFAE7.202@gelm.net>
References: <20050129140343.GA599@lnx2.w8mch.ampr.org> <41FC5929.70409@gelm.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41FC5929.70409@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Howdy, Everyone:

  I am trying to get the DCE connection speed from the USB modem of my 
mobile telephone.  The cell phone is a LG vx6100 and I am using linux
kernel-2.4.26 and the acm.o module.  With 'minicom' I can send AT
commands to the phone, but the Hayes AT command ATW2 returns "ERROR"
With 'pppd' I can  establish a 'ppp' connection and browse the web
with the 'ppp0' device that is created.

  I would like to find out if the 'AT command set' is part of the
mobile phone firmware or part of the 'acm.o' driver software.

Is there evidence of an 'AT command' to display DCE connect speed?

Regards, Chuck




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
