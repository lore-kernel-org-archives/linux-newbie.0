From: Arthur Othieno <arthurothieno@gmx.net>
Subject: Re: e2fs hosed?
Date: Tue, 15 Oct 2002 09:36:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DABD376.4010005@gmx.net>
References: <5.1.0.14.1.20021014231926.0211e170@celine>
Reply-To: arthurothieno@gmx.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: Alan Womack <arwbackup@worldnet.att.net>, linux-newbie@vger.kernel.org



Ray Olszewski wrote:

> e2fsck checks ext2 filesystems, not drives.  /dev/hdb is NOT a 
> filesystem; it is a drive. The drive contains partitions; according to 
> your  (I presume) fdisk output, partitions /dev/hdb1 and  /dev/hdb2 
> contain ext2 filesystems.
> 
> The message you get in response to "e2fsck -b 131073 /dev/hdb" is simply 
> correct -- that device does NOT itself contain an ext2 filesystem.
> 
> So ... try "e2fsck /dev/hdb1" and "e2fsck /dev/hdb2".
> 
> As to your comment about hdb2 ... sorry, but I can't comment 
> intelligently on a problem described as "major issues".
> 
> 
> At 10:45 PM 10/14/02 -0700, Alan Womack wrote:
> 
>> [root@Webby root]# e2fsck -b 131073 /dev/hdb
>> e2fsck 1.23, 15-Aug-2001 for EXT2 FS 0.5b, 95/08/09
>> e2fsck: Bad magic number in super-block while trying to open /dev/hdb
>>
>> The superblock could not be read or does not describe a correct ext2
>> filesystem.  If the device is valid and it really contains an ext2
>> filesystem (and not swap or ufs or something else), then the superblock
>> is corrupt, and you might try running e2fsck with an alternate 
>> superblock:
>>     e2fsck -b 8193 <device>
>>


As Ray has given most of the intelligent advice above, maybe I can contribute just a little bit more:


>> I've tried quite a few different superblocks, but I need a command to 
>> tell me what my block size is.  I might be sending it searching in the 
>> wrong location.  The partition table seems fine:


The command that will tell you the block size of the filesystem you're trying to e2fsck is `mke2fs -n /dev/hdbx' 

(substitute the x with the appropriate number). You should see the appropriate results in the head of the output.


Now that you have the block size, you may want to do a `mke2fs -b XXXX 
-n /dev/hdbx' (where XXXX is the block size) to get an even more 
accurate reporting of the location of the backup superblocks, not that 
it wasn't there first time round when you did the `mke2fs -n /dev/hdbx'

With the locations of the backup superblocks, you may now do
`e2fsck -b XXXX /dev/hdbx' (where XXXX is/are the location(s) of the 
backup superblock(s)


>> Disk /dev/hdb: 255 heads, 63 sectors, 525 cylinders
>> Units = cylinders of 16065 * 512 bytes
>>
>>    Device Boot    Start       End    Blocks   Id  System
>> /dev/hdb1             1        11     88326   83  Linux
>> /dev/hdb2            12       470   3686917+  83  Linux
>> /dev/hdb3           471       503    265072+  82  Linux swap
>>
>> /dev/hdb1 is fine
>> /dev/hdb2 has major issues..
> 
> 
> 
> 
> 
> 
> -- 
> -------------------------------------------"Never tell me the 
> odds!"--------
> Ray Olszewski                    -- Han Solo
> Palo Alto, California, USA              ray@comarre.com
> ------------------------------------------------------------------------------- 


HTH

Arthur

------
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
