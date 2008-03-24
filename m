From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: enabling serial port caused kernel crash in an old pc
Date: Mon, 24 Mar 2008 10:23:55 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07F4CCC0@GDCMX01.igglobal.com>
References: <393347.16521.qm@web54505.mail.re2.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <393347.16521.qm@web54505.mail.re2.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sudheer Divakaran <sudheerd@yahoo.com>, linux-newbie@vger.kernel.org


Hi,

> ==============================
> 
> serial_pci_guess_board+0x49/0x170 SS:ESP 0068:c7c11ea4
> 

The problem seems to be in "serial_pci_guess_board" function in drivers/serial/8250_pci.c. Why don't you insert prink(s) here to find out the offending line of code? Also, are you using a PCI serial port? Try using the on board serial port?

HTH,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
