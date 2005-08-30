From: Rajat Jain <rajat.noida.india@gmail.com>
Subject: How to change PCI Configuration space?
Date: Tue, 30 Aug 2005 13:47:12 +0900
Message-ID: <b115cb5f0508292147de16584@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pcihpd-discuss@lists.sourceforge.net, linux-newbie@vger.kernel.org, kenux-kernel@vger.kernel.org
Cc: dkumar@noida.hcltech.com, "Sanjay Kumar, Noida" <sanjayku@hcltech.com>, rajat.noida.india@gmail.com

Hi List,

I want to change the PCI Configuration space of a particular device in
my system. I am trying to use the "pcitweak" utility to do so, but am
not suceeding. I would appreciate if some body could provide me any
pointers in how to do so.

In this case, I want to change the value at offset 64:

$ pcitweak -r 5:9:1 64
0x01000001                 //original value

$ pcitweak -w 5:9:1 64 0x02000002      //new value

$ pcitweak -r 5:9:1 64
0x01000001                //no change?

TIA,

Rajat Jain
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
