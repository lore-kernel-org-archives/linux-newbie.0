From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Install Slack/or/RedHat to SCSI HD???
Date: Wed, 25 Sep 2002 19:55:30 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02092519553003.09996@unix.pa3gcu>
References: <20020925143657.A562@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020925143657.A562@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hal MacArgle <haltec@iceweb.net>, linux-newbie@vger.kernel.org

On Wednesday 25 September 2002 18:36, Hal MacArgle wrote:
> Several days RTFM's, Books and trial/error's, no joy w/ a Seagate
> SCSI HD and Adaptec 1515 Controller, except that DRDos7.03, MSDos6.2
> and MSDos7.0 all find it and assign C: automatically. <grin>


I dont want to jump the gun, however i was asked to try one of these (rather 
old cards) a while ago by a computer shop keeper here in town, i try get many 
differant sorts of cards fro him to try under linux, sort of sales promo 
thing, anyway, what i am about to say may not be completly true, (untill i 
get my hands on the cards from him tommorow) to check that i am not mistaken.

I am sure the card i had was a 1515, i could not get the dam thing to work in 
3 different computers all with slackware, one 8.0 and the other 2 were 8.1.
I started reading, i could find NO mention of the 1515, that possably 
contrary to what is written here below, Hal wrote, "Docs saying that's proper 
for the 151x card" The Configure.help file in the Documentation dir says its 
for the;
This is a driver for the AHA-1510, AHA-1520, AHA-1522, and AHA-2825
  SCSI host adapters. It also works for the AVA-1505, but the IRQ etc.
  must be manually specified in this case.
No mention of the 1515, i did some hunting on www.adaptec.com and i found one 
mail concerning not only the 1515 but a few other old ISA scsi adaptors as 
well all with the same problem.
The problem basicly is the system see's the device but does not see the 
disks, the reported cause is that one has an IDE controller on the board.

The URL with the answer was more than 150 chars, so i decided to send it to 
Hal in a persnal directly from adaptec's site.

Like i said at the start, i could be wrong, but i am willing to get the card 
from the retailer and try again, if he still has that old card that is.

Rest of the message is still intact, i considered it to be relavant so i did 
not snip it.



> HD configured using Seagates' Dos DM program with three partitions;
> one for Dos, 650mB, and the remainder in limbo, 650mB earmarked for
> Linux native and the remainder of the 1.3gB drive for linux swap.
>
> Slackware7.1, 2.2.16; Slack8.0, 2.2.19 /or/ 2.4.5 and RedHat6.2, 2.2.16
> a different story all three trys ending by not automatically finding
> the HD.. Slack finds it and reports the Port, IRQ and ID, 0x340, 11
> and 7 - OK - RedHat merely says, "No HD present." W/Slack I used the
> aha152x.s boot image - Docs saying that's proper for the 151x card.
> Tried two different RH boot images - same problem again...(Also tried
> other Slack .s images to no avail.)
>
> The booted kernel obviously cannot see the drive for some reason and
> after many, many kernel entries, re the Docs, I have partially given
> up. One mysterious, to me, report by the Slack boot is: "aha152x:
> Trying software for interrupts, lost. /and/ aha152x: IRQ possibly
> wrong, Please verify"... Since the card has jumper set IRQ 11 -
> dunno. Changed the jumper to 9 and tried again - same problem, except
> reporting 9 instead of 11, of course.... No other cards fitted except
> an ethernet card at 0x300, IRQ10, that I removed to try all again -
> same reports and problem..
>
> Both Slack tries actually go thru the beginning of the install but
> balk when I invoke either cfdisk or fdisk to attempt a linux
> partition setup. Cfdisk says something like "can't open HD," and
> fdisk similar..
>
> I have the onboard IDE controller disabled but strangly the BIOS
> reports CHS as: 172-255-63 but the boot kernel disk report says:
> "non IDE drive, CHS=306/4/17."
>
> I've never run into this before with several years under my belt with
> MFM, RLL and IDE HD's and SCSI peripherals EXCEPT HD's...(I have no
> other SCSI adapters or HD's available to try a swap.)
>
> I'm beginning to suspect the problem is the 1515 card, but why does
> it work with Dos???
>
> I hope someone might have the magic solution.... <grin> TIA..
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
> 	       haltec@iceweb.net | w8mch@iceweb.net..
> .
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
