From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 00:01:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021023234521.02137ec0@celine>
References: <0210232036180A.00497@unix.pa3gcu>
 <MSGID_110=3a260=2f1_3db551be@linuxnet>
 <02102315493607.00497@unix.pa3gcu>
 <1035400822.31016.14.camel@localhost.localdomain>
 <0210232036180A.00497@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035409896.31480.33.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 05:51 PM 10/23/02 -0400, Bryan Simmons wrote:
>Perhaps dma wasn't the problem.  Here's the output when I execute hdparm
>on /dev/hdc (my CD-RW):
>
>/dev/hdc:
>  HDIO_GET_MULTCOUNT failed: Input/output error
>  IO_support   =  1 (32-bit)
>  unmaskirq    =  1 (on)
>  using_dma    =  1 (on)
>  keepsettings =  0 (off)
>  readonly     =  0 (off)
>  BLKRAGET failed: Input/output error
>  HDIO_GETGEO failed: Invalid argument
>
>When I try to retrieve the read-ahead setting: hdparm -a /dev/hdc I get:
>
>/dev/hdc:
>  BLKRAGET failed: Input/output error
>
>Does anyone know of a web site where I can research these errors?  Or
>does anyone have an idea, off the top of their heads, why this could be
>happening?


I don't have a reference, but I did take a minute to get the same results 
for my two drives. Both work fine. Here is what I get:

First, for hdc, which is a DVD drive acessed via IDE --

         waverly:/home/autovcr# hdparm /dev/hdc

         /dev/hdc:
         HDIO_GET_MULTCOUNT failed: Invalid argument
         IO_support   =  0 (default 16-bit)
         unmaskirq    =  0 (off)
         using_dma    =  1 (on)
         keepsettings =  0 (off)
         readonly     =  1 (on)
         readahead    =  8 (on)
         HDIO_GETGEO failed: Invalid argument

Now for hdd, my CD-RW drive, accessed via ide-scsi emulation --

         waverly:/home/autovcr# hdparm /dev/hdd

         /dev/hdd:
         HDIO_GET_MULTCOUNT failed: Input/output error
         IO_support   =  0 (default 16-bit)
         unmaskirq    =  0 (off)
         using_dma    =  1 (on)
         keepsettings =  0 (off)
         readonly     =  0 (off)
         BLKRAGET failed: Input/output error
         HDIO_GETGEO failed: Invalid argument

And just to complete the comparison, here is one of the same system's hard 
disks --

         waverly:/home/autovcr# hdparm /dev/hdb

         /dev/hdb:
         multcount    = 16 (on)
         IO_support   =  0 (default 16-bit)
         unmaskirq    =  0 (off)
         using_dma    =  1 (on)
         keepsettings =  0 (off)
         readonly     =  0 (off)
         readahead    =  8 (on)
         geometry     = 15017/255/63, sectors = 241254720, start = 0

 From this, I infer that the two errors I see on both removable drives 
reflect differences between CD drives and hard disks. The BLKRAGET error is 
somehow associated with use of scsi-ide emulation, but does not interfere 
with my ordinary use of the drive.

So ... you might, just as a test, remove the scsi-ide emulation and see if 
you can then read the problem CD. If not, you can then check the readahead 
setting and see if it seems to be wrong. More likely, since the problem is 
specific to the one disk, there is something unusual about it that needs to 
be corrected. When it is mounted, does it return sensible results in its 
listings of "df" and "ls -l"? Can you "dd" it to an iso image? Is it 
iso9660 compliant?


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
