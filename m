From: Ray Olszewski <ray@comarre.com>
Subject: Re: Backup up Linux fileserver via Maxtor External Hard Drive
Date: Wed, 29 Dec 2004 09:35:45 -0800
Message-ID: <5.1.0.14.1.20041229091647.0220c310@celine>
References: <5.1.0.14.1.20041229074910.0217b010@celine> <004501c4edc3$e036f440$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004501c4edc3$e036f440$1f0aa8c0@lanadmin>
References: <5.1.0.14.1.20041229074910.0217b010@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-673D27F4"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:31 AM 12/29/2004 -0500, Eve Atley wrote:


>We recently purchased a Maxtor External Hard Drive 250gb OneTouchII. We were
>considering using this to backup data on our RedHat Linux 9 fileserver,
>hooking it directly to this fileserver. One unrelated issue is that the usb
>is probably 1.1 while specs are 2.0, though the drive does say it's 1.1
>compatible. Second, what issues do we need to resolve in order for a. the
>Linux box to read the drive, and b. formatting the unformatted external
>drive to work with the Linux box?


Eve -- I waited a bit before replying, in the hope that someone with more 
specific knowledge than I can offer would turn up. My own experience with 
USB drives is limited to flash drives (those little keychain thingies). But 
I suspect that the issues for these USB hard disks are the same, so I'll 
tell you what I know in the hope that you will find it helpful.

First, to mount and read the drive, you need a few things set in your 
kernel. (This is for 2.4.x kernels; if you use 2.6.x, the details may 
differ a bit.)

         USB Storage -> Support for USB -> USB mass storage support
                 needs to be enabled (in kernel or loaded as a module)
         In this area, you probably also want to enable
                 USB Storage -> Support for USB ->Preliminary USB device 
filesystem

         USB drives are mounted as scsi drives, so basic scsi drive support 
needs to me provided, either in kernel or loaded as a set of modules (two, 
as I recall). Abd you need the /dev pseudofile entries for scsi devices, 
probably just /dev/sda and /dev/sda*

         an appropriate filesystem driver needs to be loaded, in the kernel 
or as a module; ext2 works fine.

Second, once you have all that set up, you should be able to use the usual 
tools to set up your USB drive. It will (probably; I don't know your setup) 
show up as /dev/sda, so you can fdisk that device to set up your 
partitions, then mkfs.ext2 whatever partitions you choose to set up, then 
use whatever you are used to using (cp, tar, whatever) to do the actual 
backups.

Third, one thing Linux is never very smart about is noticing when mounted 
filesystems are removed. You'll want to be careful to umount any 
filesystems on this drive before you disconnect it. (The USB stuff itself 
is fine about noticing the connection and disconnection of USB devices.) 
And ... this was probably obvious ... you need to umount the partitions 
after you connect the device.

Last, the only likely issue your use of USB 1.1 will raise is speed of 
packups. If that proves to be an issue for you, and your server is an i86 
system, you might want to spend the US$10 or so for a PCI card that 
provides USB 2.0.

As I said at the outset, I haven't actually used these drives myself, so 
I'm extrapolating hee from my experiences with USB flash. If I've gotten 
some details wrong, I do hope that someone will spot them and post a 
correction.




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.6 - Release Date: 12/28/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
