From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: Backup up Linux fileserver via Maxtor External Hard Drive
Date: Wed, 29 Dec 2004 22:13:43 +0000
Message-ID: <41D32C17.7020509@comcast.net>
References: <004501c4edc3$e036f440$1f0aa8c0@lanadmin> <41D3210F.1050307@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41D3210F.1050307@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck gelm wrote:

> Eve Atley wrote:
>
>> We recently purchased a Maxtor External Hard Drive 250gb OneTouchII. 
>> We were
>> considering using this to backup data on our RedHat Linux 9 fileserver,
>> hooking it directly to this fileserver. One unrelated issue is that 
>> the usb
>> is probably 1.1 while specs are 2.0, though the drive does say it's 1.1
>> compatible. Second, what issues do we need to resolve in order for a. 
>> the
>> Linux box to read the drive, and b. formatting the unformatted external
>> drive to work with the Linux box?
>>
>> Thanks,
>> Eve
>
>
> Hi, Eve:
>
>  I recently purchased a USB interface device that accepts a 2.5" hard 
> drive.  It is USB 2.0  & 1.1 compatible, it just runs slower at v1.1
> according to the documentation.  I inserted one of my linux laptop
> driver and plugged it into my USB port of a Slackware v9.1,
> kernel 2.4.22, workstation and 'tail /var/log/messages' reported:
>
> Dec 29 05:18:21 server kernel: hub.c: new USB device 00:10.3-6, 
> assigned address 3
> Dec 29 05:18:22 server kernel: scsi2 : SCSI emulation for USB Mass 
> Storage devices
> Dec 29 05:18:35 server kernel:  sdb: sdb1 sdb2
> Dec 29 05:18:38 server usb.agent[1535]: missing kernel or user mode 
> driver usb-storage
>
>  I am not sure what the last line meant but, knowing that my
> 1st partition is swap and the 2nd the working partition, I:
>
> mount /dev/sdb2 /mnt/hd
>
>  mounts the filesystem at /mnt/hd   :-)
>
>  'lsmod' |grep -i usb shows that
> usb-storage and usbcore
>  are installed.
>
>  As Ray mentioned, if your new drive is unpartitioned and/or unformatted;
> I assume that you can use 'fdisk' to partition and mkfs.????
> to create a filesystem on it.
>
> HTH, Chuck
>
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
Quote "As Ray mentioned, if your new drive is unpartitioned and/or 
unformatted;
            I assume that you can use 'fdisk' to partition and mkfs.????
            to create a filesystem on it. "

To create a partion, run fdisk and partion the correct device.  If you 
wish to format the drive with a file system, you can use:

          mke2fs /dev/hdXX (sdXX for scsi) for an ext2 partition
          mke2fs -j /dev/hdXX for ext3 partition
          mkresierfs /dev/hdXX for a reiser3 partion

I personally use an ext2 on my boot partion, and a reiser 3 for 
everything else linux.

One more thing, the partitions must have a file system installed in 
order for you to mount them.

Jeremy
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
