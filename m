From: Richard Dawson <rcdawson@att.net>
Subject: another round of questions regarding modem
Date: Sun, 08 Jun 2003 14:44:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE3AE4D.4090003@att.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Distribution:  Linux 9.1

System:  ALR Optima Pentium MMX, 116 MHz.   (Why bother?  Hey, with free 
software this machine is worth something!  Besides, I'm trying to learn 
here.)

Modem  US Robotics V.everything internal , ISA board.  (Yup, a vastly 
over-priced Cadillac. I bought it several years ago when I was 
experiencing slow connections hoping it would help.  Seemed to help.) 
 The modem is plug-and-play or can be configured for specific  serial 
port/interrupt.

Mandrake 9.1/s installation and hardware configuration tools don't probe 
the ISA bus, so neither the sound board nor the modem were detected. 
 After a lot of googling I found that I needed to use sndconfig to 
configure the ISA sound board.  Successful!  That leaves the modem.

Of course  sndconfig didn't find the modem or help with its 
configuration.  I'm a little slow, but it finally dawned on me that 
perhaps if I simply (1) configured the modem to a specific port and (2) 
told kppp that the device was at that port I would be done.

The modem can be configured for com1, com2, com3, or com 4 
(ttyS0, ttyS1, ttyS2, ttyS3) with the customary interrupts (4,3,4,3).  I 
disabled Com 2 in the system BIOS, configured the modem for com2 (ttS1) 
with interrupt 3.  I then checked the serial port (ttyS1) with setserial 
and found that it was configured for interrupt 5!  Strange. 
(Interestingly enough, this is the interrupt used by the sound board.) 
 Using setserial, I forced the interrupt to be interrupt 3.  Finally, 
using the madrake configuration tool, I told kppp to use /dev/ttyS1 as 
the device.  With all this done, the configuration tool offers me an 
opprotunity to query the modem.  After a long pause it indicates there 
is no response from the modem.  (Before running setserial, with linux 
associating IRQ 5 with ttyS1, the response is "modem busy."  Recall, IRQ 
5 is used by the sound card.)

So there is, of course, another wrinkle to this.  The modem manual's 
depiction of the jumpers for setting com ports and IRQs is not consisten 
with the board layout!  The date on the manual is several years earlier 
than the date on the modem itself!  For the outrageous price of the 
modem it should at least have an up-to-date manual, but of course it 
doesn't.  The manual posted on US Robotics web site is even older, and 
for the external modem only!  This reduces me to trying random 
combinations of jumpers to try and get a response.

Something that is complicated by the fact that I have to use setserial 
each time I boot in order to have Linux use the "standard" IRQ for 
ttyS1.  (ttyS0 is associated with IRQ3 as one might expect).

So my questions:
(1)  Am I missing something?  Am I barking up entirely the wrong tree?
(2)  Where can I put a setserial command in order that Linux boots up 
with IRQ 4 associated with ttyS1?
(3)  Has anyone else experienced this confusion with the modem that I am 
using?  (I have submitted a rquest for ino to US Robotics)
(4)  Anything else relevant that might help.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
