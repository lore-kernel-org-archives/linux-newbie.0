From: Ray Olszewski <ray@comarre.com>
Subject: Re: Adaptec 2100S
Date: Mon, 26 Jan 2004 13:43:30 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040126133144.0200e830@celine>
References: <Pine.LNX.4.56.0401261723230.18923@pluton.chilepac.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0401261723230.18923@pluton.chilepac.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:29 PM 1/26/2004 -0300, Rodrigo Gesswein wrote:
>Hello!
>
>    I have a new server with an Adaptec 2100S hardware raid controller
>and _only_ scsi hard disks. I'm trying to install debian linux 3.0r2 but the
>hard disk are not recognized by the default kernel.
>    Does anyone have a clue about this situation ?? any information will
>be very usefull.

Info on this seems to be fairly hard to track down. With a bit of Googling, 
I turned up this much:

Apparently the 2100s requires a dpt_i2o.o module. This is (or was; I can't 
find an actual link) available from Adaptec, and it *may* be the same 
module that is now part of recent 2.4.x kernels (associated with "Adaptec 
I2O RAID support").

In any case, this link the closest I can to working instructions ...

         http://www.togaware.com/linux/survivor/Load_RAID.html

... and it does not describe a complete process -- though it does discuss 
compiling the module for kernel 2.2.19 and concerting the Debian bootdisks 
to use that kernel.

I suspect you will need eventually to compile a kernel with initrd support 
so it can load the needed modules before trying to mount the root 
filesystem on the RAID array. Or you will need to boot/init from a 
different location -- were I facing this problem, I'd add a small (10-20 GB 
or so, small by today's standards) IDE drive and use it as boot media and 
the root filesystem ... mounting the RAID array at a point appropriate to 
whatever use calls for a RAID array (/home ? some database directory?).

For more information, try Googling "linux  Adaptec 2100S debian". 
Especially if you read German (I don't), you'll find a lot.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
