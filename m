From: James Miller <jamtat@mailsnare.net>
Subject: Re: sound problems on Debian unstable
Date: Wed, 6 Apr 2005 22:38:44 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504062231281.5570@localhost.localdomain>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro> <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 7 Apr 2005 caszonyi@rdslink.ro wrote:

> Can you post your /proc/interrupts here ?

me@mymachine:~$ cat /proc/interrupts
            CPU0
   0:   25759543          XT-PIC  timer
   1:      23960          XT-PIC  i8042
   2:          0          XT-PIC  cascade
   3:       5223          XT-PIC  PAS16
   7:          1          XT-PIC  parport0
   8:          1          XT-PIC  rtc
  10:      50736          XT-PIC  eth0
  11:     283557          XT-PIC  uhci_hcd
  12:      51870          XT-PIC  i8042
  14:      29656          XT-PIC  ide0
  15:     493057          XT-PIC  ide1
NMI:          0
LOC:          0
ERR:          0
MIS:          0
me@mymachine:~$

> Also if your soundcard is an ISA one and your BIOS allow you, you can play 
> with the way BIOS assign IRQ to devices (ISA/PCI or PCI) but this could be a 
> dangerous thing if you don't know what you are doing.
> On a normal system interrupts 0, 1, 2, 3, 4, 7 are normally assigned to ISA 
> devices and 14 and 15 to PCI IDE. The rest of them depends of the 
> configuration of the machine.
> I usually saw that IRQ 5 or IRQ 9 was used by older soundcards.

ISA soundcard, yes. Like I said earlier in this thread the BIOS is 
reported as PnP by Linux. Very limited tweaking there--certainly nothing 
as advanced as setting IRQ's. I'm afraid my only options are to either set 
a different IRQ on the soundcard using the DOS software (though I see no 
free IRQ's in range) or to disable ttyS1 (COM 2 as the BIOS sees it, I 
believe) and see if that relieves any potential IRQ 3 conflict. Possible 
IRQ's for the card are: 2, 3, 5, 7, 10, 11, 12, 15 for "Soundman" and 2, 
3, 5, and 7 for "Sound blaster."

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
