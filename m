From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: How to add a new partition to an existing Red HAT 8
Date: Sun, 20 Feb 2005 10:50:24 -0500
Message-ID: <4218B1C0.1060709@cwazy.co.uk>
References: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-reply-to: <000701c516f7$582637c0$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: bhamal@wlink.com.np
Cc: linux-newbie@vger.kernel.org

bj wrote:
> Hi !
> 
> I have a red hat 8.0 & Windows 2000 on a intel box with a 60 GB hard drive .
> 
> Only 20 GB has been partitioned into 10 GB of NTFS and 9 GB of Linux , file
> id 83 ext 3 and 1 GB of Linux swap , file id 82 .
> 
> I want to use some free unallocated space from the remaining 40 GB for my
> linux .
> 
> But I could not get fdisk (from the command prompt ) to show me the
> unallocated space  and partition it .
> 
> I could see the unallocated free space when I run KDE hardware browser .
> 
> I could find the GUI disk druid too .
> 
> So How do I partition the unused free space for my red hat 8.0 .
> 
> Which utility do I use ?
> 
> When ever  I use  fdisk , and choose option n ( to add a partition ) , it
> gives an error message saying that I need extended partition or I need to
> delete old partition to create a new one .
> 
> But I have 40 GB of un used space on my hard drive.
> 
> Please advice .
> 
> Thank you for your help in advance .
> 
> cheers,
> bj
> 
> 

You have a bit of a problem.  You'll need to create an extended partition to 
handle anything beyond the 4 basic partions.  Let's make an example:

# fdisk /dev/hda

...blah...

Command (m for help): p

If it shows something like:

Disk /dev/hda: ..blah..

    Device Boot      Start         End      Blocks   Id  System
/dev/hda1               1       20480   something   86  NTFS
/dev/hda2	    20481	40960	something   83  Linux
/dev/hda3	    40961	41960   something   82  Linux swap

Then you're okay.

Do:

Command (m for help): n
Command action
    e   extended
    p   primary partition (1-4)
e
Partition number (1-4): 4

and that'll create the extended partitions you need.

Then, you can have up to 16 partitions iirc.

If you have all 4 primary partitions full, you have to do a few more steps.

boot into single-user mode (init 1)

# swapoff -a
# fdisk /dev/hda

Then, you remove your swap partition, make the extended partition in the hole you 
made in the partition table, create the swap partition in /dev/hda5 in the same 
place on the hard drive you had it before.  Make whatever other partitions you 
want in /dev/hda6, etc.

After you are done, do:

# mkswap /dev/hda5
# vi /etc/fstab

and modify the entry for the swap partition from /dev/hda3 (or wherever) to 
/dev/hda5, and reboot.

To make your life easier, you might want to look at LVM - 
http://www.tldp.org/HOWTO/LVM-HOWTO/.  Came to Linux from AIX.

It's made chaining hard drives and dealing with expanding directories much easier. 
  Windows has similar functionality in Server 2003 and (I think) XP Pro - just 
haven't played with it enough to be sure.

Good luck,
Jim

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
