From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: Re: Large FTP transfers
Date: Sun, 29 Sep 2002 17:39:30 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209291739.30520.adam@luchjenbroers.com>
References: <5.1.0.14.1.20020928075131.02675d00@celine> <5.1.0.14.1.20020928093421.024d14f0@celine>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020928093421.024d14f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm starting to suspect the NIC. It has twice recently (one instance before my 
previous emails, one since) stopped being detected with Linux giving me an 
"unable to access 64-bit address message"

I've retrieved them from /var/log/kernel/errors

Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for 
device 00:09.0
Sep 28 22:09:21 ironclad kernel: PCI: Unable to handle 64-bit address for 
device 00:09.0
Sep 28 22:09:21 ironclad kernel: Unknown bridge resource 0: assuming 
transparent
Sep 28 22:09:21 ironclad kernel: PCI: Cannot allocate resource region 1 of 
device 00:09.0
Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because of 
resource collisions
Sep 28 22:09:21 ironclad kernel: PCI: Device 00:09.0 not available because of 
resource collisions

In both cases, applying pressure to the top of the card fixed the issue, 
however it is properly screwed in. How can I verify that this part is at 
fault as I do not have any other cards to test it with?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
