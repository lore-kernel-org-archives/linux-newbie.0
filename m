From: Ray Olszewski <ray@comarre.com>
Subject: Re: dmesg output: impending hardware failure?
Date: Wed, 17 Aug 2005 09:33:46 -0700
Message-ID: <430366EA.5010303@comarre.com>
References: <Pine.LNX.4.61.0508151724430.11640@localhost.localdomain> <43012AC7.2000606@gelm.net> <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0508161249060.4989@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

James Miller wrote:
> On Mon, 15 Aug 2005, chuck gelm wrote:
> 
>> First: Backup your data on /dev/hdb! :-|
>> Second: I recommend editing /etc/smartd.conf to include
>> /dev/hdb -a
>> Then running
>> smartd
>> Then
>> tail -f /var/log/messages
>> and see whazzzup!  ;-)
> 
> 
> This doesn't reveal anything related to the drive. Some mouse messages 
> show up there, but that's another puzzle. Further investigation reveals 
> that, when I boot with the "old" 2.6.10 kernel, there are no dmesg 
> output errors related to /dev/hdb. Furthermore, with the 2.6.12 kernel I 
> got doing the dist-upgrade, I seem also to have gotten udev. Maybe this 
> is related somehow to udev? I notice I've got usb hotplug back with the 
> dist-upgrade, too. Probably the resolution to these and related issues 
> is compiling my own kernel and the learning associated with that. I've 
> actually compiled a kernel before semi-successfully. I don't remember 
> much about it though, and there's a special Debian way of doing it that 
> I'm not very familiar with, so it would be sort of like starting from 
> square one. If anyone has further input on the /dev/hdb errors 
> referenced, the 2.6.12 kernel, udev, or other related advice, please 
> offer it.

I can only offer a guess, James, but the guess is that this report is 
nothing to worry about. I guess this from a look at the details.

First, dmesg reports this:

> hdb: Host Protected Area detected.
>     current capacity is 39102336 sectors (20020 MB)
>     native  capacity is 39102337 sectors (20020 MB) 

Then it reports a bunch of seek errors, all involving the same sector:

> hdb: dma_intr: error=0x10 { SectorIdNotFound }, LBAsect=39102336, sector=39102336 

Now, note that the sector involved in ALL the seek errors is the last 
sector, the one included in "native capacity" but not in "current 
capacity". (Remember, sector numbers start at 0, not 1.) Since this 
sector is not part of the capacity of the drive as (for example) fdisk 
sees it, there will never be a call to read from or write to this 
sector, since no partition or filesystem will use it.

The errors are probably occurring because during boot/init, hard drives 
are told to seek the "last" sector. Or they used to be told this ... I'm 
not sure that they still are, but they might be.

All that said, I still don't know why the new kernel reports these seek 
failures but the old one doesn't. Since you use pre-compiled kernels, 
and I don't even know where you get them from (I've never heard of "the 
Synaptic equivalent" to a Debian dist-upgrade ... does this just mean 
you work at Synaptic and use a local cache in a proxy server?), they are 
a black box to both of us. If the drive is 4 years old, it may have been 
partitioned under a 2.4.x kernel (conceivably even a 2.2.x. kernel), so 
these reports could just reflect improvements in the IDE code over time.

Or it may be some wackiness specific to the IDE chipset in your machine 
(if you look at a kernel configuration ruleset, in "make menuconfig" or 
whatever is convenient for you, you will see a lot of choices involving 
specific IDE chipsets, with the number growing over time) and changes in 
what chipsets are supported in pre-compiled kernels.

Or it could be a "feature" of the BIOS or IDE hardware (the "Host 
Protected Area" part makes me think of laptop drives, which sometimes 
reserve an area for maintaining state while sleeping).

Or (most likely) it is some oddball thing I haven't thought of.

But I doubt it is a cause for concern.

Of course, if you are seeking more widespread reports of seek errors, 
involving other sectors and times other than boot/init, then you should 
immediately back up the contents of this drive on a new one.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
