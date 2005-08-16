From: James Miller <jamtat@mailsnare.net>
Subject: Re: dmesg output: impending hardware failure?
Date: Tue, 16 Aug 2005 13:26:30 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain>
 <43012AC7.2000606@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43012AC7.2000606@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 15 Aug 2005, chuck gelm wrote:

> First: Backup your data on /dev/hdb! :-|
> Second: I recommend editing /etc/smartd.conf to include
> /dev/hdb -a
> Then running
> smartd
> Then
> tail -f /var/log/messages
> and see whazzzup!  ;-)

This doesn't reveal anything related to the drive. Some mouse messages 
show up there, but that's another puzzle. Further investigation reveals 
that, when I boot with the "old" 2.6.10 kernel, there are no dmesg output 
errors related to /dev/hdb. Furthermore, with the 2.6.12 kernel I got 
doing the dist-upgrade, I seem also to have gotten udev. Maybe this is 
related somehow to udev? I notice I've got usb hotplug back with the 
dist-upgrade, too. Probably the resolution to these and related issues is 
compiling my own kernel and the learning associated with that. I've 
actually compiled a kernel before semi-successfully. I don't remember much 
about it though, and there's a special Debian way of doing it that I'm not 
very familiar with, so it would be sort of like starting from square one. 
If anyone has further input on the /dev/hdb errors referenced, the 2.6.12 
kernel, udev, or other related advice, please offer it.

Thanks, James

> James Miller wrote:
>> I run a Debian unstable system here and recently did a 
>> dist-upgrade--actually the Synaptic equivalent. In the process, I got a new 
>> kernel (2.6.12). On reboot, I noticed alot of errors referencing /dev/hdb. 
>> This is not the oldest of the 3 hard drives I have in this machine, but 
>> it's also not very new (ca. 4 years old). All drives are on the built-in 
>> IDE channels. I'm wondering if the output may be telling me the hardware is 
>> on its way south. I include relevant dmesg output below. Any input or 
>> advice on this anyone?
>> 
>> NET: Registered protocol family 1
>> Uniform Multi-Platform E-IDE driver Revision: 7.00alpha2
>> ide: Assuming 33MHz system bus speed for PIO modes; override with idebus=xx
>> PIIX4: IDE controller at PCI slot 0000:00:07.1
>> PIIX4: chipset revision 1
>> PIIX4: not 100% native mode: will probe irqs later
>>     ide0: BM-DMA at 0xffa0-0xffa7, BIOS settings: hda:DMA, hdb:DMA
>>     ide1: BM-DMA at 0xffa8-0xffaf, BIOS settings: hdc:DMA, hdd:DMA
>> Probing IDE interface ide0...
<snip>> hda: ST310215A, ATA DISK drive
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
