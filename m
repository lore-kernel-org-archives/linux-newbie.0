From: Ray Olszewski <ray@comarre.com>
Subject: Re: cloning a system
Date: Sat, 12 Apr 2003 11:27:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030412105213.01ea6e78@celine>
References: <5.1.0.14.1.20030411094900.01ea5030@celine>
 <5.1.0.14.1.20030411121238.0207ae40@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E97D42C.5C9325B@aggies.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks for the quick feedback on this, Steve (and Hal).

BTW, Steve, I don't *really* know everything ... I just act like I do. 
Probably a habit from my days doing consulting work ....

OK. I tested Steve's suggestion, particularly wanting to determine two things:

(1) If I used a larger drive as a target, would the unused space be 
available via fdisk? (Steve's hedged "I think ...").

(2) If the source drive were bootable using lilo, would the target drive 
boot as well (my real concern)?

Here are the characteristics of the two drives as reported by fdisk:

SOURCE drive (on hda) --

         Disk /dev/hda: 8455 MB, 8455200768 bytes
         255 heads, 63 sectors/track, 1027 cylinders
         Units = cylinders of 16065 * 512 = 8225280 bytes

TARGET drive (on hdc) --

         Disk /dev/hdc: 10.2 GB, 10245537792 bytes
         255 heads, 63 sectors/track, 1245 cylinders
         Units = cylinders of 16065 * 512 = 8225280 bytes

The actual clone command and its result:

         maryann:~# dd if=/dev/hda of=/dev/hdc bs=2M
         4031+1 records in
         4031+1 records out
         8455200768 bytes transferred in 652.833982 seconds (12951533 
bytes/sec)

Afterwards, I could immediately

         -- mount /dev/hdc3
         -- fdisk the unused space as /dev/hdc4, and mke2fs that partition.
         -- mount /dev/hdc4

I halt'ed the system, swapped the cloned drive in as hda, and rebooted. 
lilo was able to boot the kernel (my biggest worry about this approach). 
The only (minor) problem I encountered was that the root filesystem was now 
seen as improperly umounted and required an e2fsck on the first boot ... a 
minor thing, easy to live with.

I'll watch for additional problems as I move this drive into its actual 
system (identical to the source system in all interesting ways) and use it. 
But this simple method seems to do everything I need. Thanks.

BTW, Hal, the issue with /proc involves trying to tar the root filesystem, 
not dd it ... tar will try to include all the pseudofiles in /proc unless 
you take steps to avoid this.

The easiest way is to umount /proc before you do it.

A clumsier one is to tar not the root filesystem itself but all of its 
parts (e.g., "tar -cvzf somename.tgz /etc /sbin /usr /lib ..."). Though 
clumsier, this has the advantage that you can easily skip /tmp, /var/log, 
/home. and other stuff you might also prefer not to transfer (conceivably 
/boot).

I've been told that there is a tar switch you can use too, but I forget the 
details of that one.


At 08:54 AM 4/12/2003 +0000, ichi@aggies.org wrote:
>Ray Olszewski wrote:
> >
> > What is the easiest way under Linux to make an EXACT
> > duplicate of a hard disk (not a partition)?
> >
> > is there a way, under Linux, to clone the complete
> > drive -AND- have it be bootable out of the box?
> > Does that method depend on the two drives being
> > physically identical?
>
>It seems strange telling Ray Olszewski (the Answer Man)
>how to do something, but here goes:
>--------------------------------
>dd if=/dev/hdb of=/dev/hdc bs=2M
>--------------------------------
>That will clone the slave HD on the primary IDE interface
>to the master HD on the secondary IDE interface.  Set bs
>close to the size of the HD buffer.
>
>The two HD do not have to be the same size.  The destination
>drive can be larger, but then there will be space left-over
>(which, I think, can be allocated with fdisk).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
