From: caszonyi@rdslink.ro
Subject: Re: sound problems on Debian unstable
Date: Thu, 7 Apr 2005 01:55:55 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504070145360.1005@grinch.ro>
References: <5.1.0.14.1.20050406092225.02059310@celine>
 <5.1.0.14.1.20050406092225.02059310@celine> <5.1.0.14.1.20050406120016.0201f1f8@celine>
 <Pine.LNX.4.61.0504061541470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070022080.852@grinch.ro> <Pine.LNX.4.61.0504061649470.5570@localhost.localdomain>
 <Pine.LNX.4.60.0504070119060.971@grinch.ro> <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504061726280.5570@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Wed, 6 Apr 2005, James Miller wrote:

> On Thu, 7 Apr 2005 caszonyi@rdslink.ro wrote:
>
>> On Wed, 6 Apr 2005, James Miller wrote:
>>> 
>>> Not totally, no. cat /pro/interrupts shows only PAS16 assigned to IRQ 3. 
>>> But dmesg output has ttyS1 using IRQ 3. It's a bit confusing to me. I 
>>> assigned it IRQ 3 because previously, when checking cat /proc/interrupts 
>>> output I was not even seeing 3 listed. There's nothing hooked to ttyS1 
>>> btw. I suppose it's one of the machine's 2 serial ports.
>> 
>> This could be the problem. Interrupt 3 is allways assigned to serial port 
>> afaik.
>> Try to use another interrupt for the sound card.
>
> There's no other available IRQ as far as I can tell. I do have the option of 
> turning off the port in the BIOS which, I suppose, could affect things. 
> Before trying anything like that though I should mention that sound played 
> through this card from the CD is flawless (or as flawless as sound from an 
> old soundcard playing through dimestore speakers can be). It's only when 
> trying to play from sound apps with music stored on the harddrive that I get 
> the distortion I've been describing. Still think it's an IRQ problem?
>

Afaik playing sound from the CD through soundcard doesn't involve 
software. It still looks like an IRQ problem.

Can you post your /proc/interrupts here ?

Also if your soundcard is an ISA one and your BIOS allow you, you can play 
with the way BIOS assign IRQ to devices (ISA/PCI or PCI) but this could be 
a dangerous thing if you don't know what you are doing.
On a normal system interrupts 0, 1, 2, 3, 4, 7 are normally assigned to 
ISA devices and 14 and 15 to PCI IDE. The rest of them depends of the 
configuration of the machine.
I usually saw that IRQ 5 or IRQ 9 was used by older soundcards.


--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
