From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re:Solved: Newbie installation problem
Date: Tue, 27 Aug 2002 21:58:32 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200208272158.32273.sotl155360@earthlink.net>
References: <001701c23a81$c565a3c0$6401a8c0@ENRIQUE> <001901c24e2d$4876b830$6401a8c0@FAMILY>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001901c24e2d$4876b830$6401a8c0@FAMILY>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

>
> I changed the NIC to another PCI slot that I had skipped.  Either the PCI
> slots are read in sequence, or the PCI slot my NIC was occupying was
> damaged.  
Due to problems with my system which were solved by moving cards to a 
different location I would like to ask in general - because I assume that 
each manufacture may do something differently - how are PCI slots read on a 
motherboard?

Does each slot receive an individual address or do slots share addresses?

Assuming that there is no sound card or video card on the mother board what 
other devices that are standard would be have interrupts that could interfer 
with the interrupts on the slots?

I recall reading numerous places that the interrupt on most cards were 
hardware or software chainable how does this coinside with fixed interrupt 
address on the mother board? Note if one can change interrupt address to a 
card by either action then the slot could not have a fixed address implying 
that movement of the card from one slot to another would accomplish nothing 
but since movement solved the problem and the slot in my case was not 
corrupted that would imply that each slot had fixed addresses. This is not 
logically consistant.

Thank
Frank


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
