From: Richard Dawson <rcdawson@att.net>
Subject: more compaq 4000 / linux questions.
Date: Sun, 01 Jun 2003 14:52:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EDA7595.3090202@att.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux <linux-newbie@vger.kernel.org>

As long as I have asked one question about getting this Compaq deskpro 
4000 (5200MMX) computer with its 200 MHz pentium processor, I might as 
well go whole-hog and try to get everything working.

Mandrake 9.1 didn't seem to find the ESS 1868 based. Compaq sound card. 
 The Compaq card is a quasi-ISA card.  There is a slightly extended ISA 
socket on the board (labeled Compaq) in which it is installed.  I 
removed that card, put a "vanilla" sound card in the adjacent ISA slot, 
and rebooted.  The Mandrake Control Center (MDC) Hardware tab doesn't 
seem to find it either.

It does find The PCI video card.

It finds two things that it classifies as "unknown/others":  (1) 56K 
FaxModem Model 5610 --this is the U.S. Robotics "hardware" modem.  Why, 
one might ask, does it say it is unknown when it calls it by name and, 
with a serial port assigned and a link installed, is able to use it? 
 (2) VT82C586/A/B PCI to ISA (Apollo VP)  This on bus 1106:586 at 
location 0:14:0.

It finds one thing it classifies as "(E)IDE/ATA controllers":  VT82C586 
IDE (Apollo)"  I presume this is for the hard drive.

All of this seems to be there even if I pull the sound cards, so (1) can 
I get this thing to use the sound card that came with it, or (2) can I 
get it to acknowledge the installation of some other card?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
