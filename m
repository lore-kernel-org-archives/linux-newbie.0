From: Jim Nelson <james4765@verizon.net>
Subject: Re: address limitation
Date: Sat, 09 Oct 2004 05:44:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4167B301.4010705@verizon.net>
References: <20041009091258.40784.qmail@web52901.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041009091258.40784.qmail@web52901.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Ankit Jain wrote:

>Thanks a lot for help
>
>rest inline:)
> --- Jim Nelson <james4765@verizon.net> wrote: 
>  
>
>>Ankit Jain wrote:
>>
>>    
>>
>>>hi
>>>
>>>well i am not able ot understand this... there are
>>>      
>>>
>>lot
>>    
>>
>>>many more problems
>>>
>>>/proc/iomem
>>>00000000-0009fbff : System RAM
>>>0009fc00-0009ffff : reserved
>>>000a0000-000bffff : Video RAM area
>>>000c0000-000c7fff : Video ROM
>>>000f0000-000fffff : System ROM
>>>00100000-077effff : System RAM
>>>00100000-00250d5b : Kernel code
>>>00250d5c-0034ac43 : Kernel data
>>>
>>>this is just a brief..... System RAM what does that
>>>mean? the range can just point 65K of RAM? what
>>>      
>>>
>>about
>>    
>>
>>>rest? so what that means?
>>> 
>>>
>>>      
>>>
>>Okay,
>>
>>00000000-0009fbff : System RAM
>>
>>This is the 640 KB that is part of the legacy
>>support for real-mode PC 
>>applications.
>>
>>0009fc00-0009ffff : reserved
>>000a0000-000bffff : Video RAM area
>>000c0000-000c7fff : Video ROM
>>000f0000-000fffff : System ROM
>>
>>
>>This is the BIOS and VGA address area (up to 1 MB),
>>once again to 
>>support real-mode PC stuff (DOS, primarily).  The
>>original IBM PC's (I 
>>think starting with the XT, maybe the PC) had a
>>20-bit memory addressing 
>>scheme, but only 16-bit registers.  If you ever want
>>to hop into the 
>>way-back machine to the days of CGA's, hardcards,
>>and 5 1/4" floppies, 
>>grab a book on DOS programming - FreeDOS
>>(http://www.freedos.org) is 
>>still out there, and it's actually kind of fun to
>>run something that 
>>blindingly simple :)
>>
>>00100000-077effff : System RAM
>>
>>
>>Here is the rest of your system's memory.
>>
>>
>>    
>>
>>>also,
>>>
>>>on a 32 bit proceesor we can at the most have a
>>>      
>>>
>>access
>>    
>>
>>>to 4GB of area as we have that many address space.
>>>well some what it look stupid but then also asking
>>>some where this blunder i have to clear, that how
>>>      
>>>
>>it
>>    
>>
>>>access the hard disks which is of much high
>>>      
>>>
>>capacity?
>>    
>>
>>> 
>>>
>>>      
>>>
>>Hard disks are controlled by sending requests to and
>>from the drive for 
>>blocks of data.  Sort of like reading a book - you
>>only see a couple of 
>>pages at a time, but you can access the whole book,
>>or any section of 
>>it, by flipping to the right page number.  Same way
>>with the hard disk 
>>controller.  Ask it for sector 11432, and it will
>>give it to you 
>>(oversimplified, but essentially correct).
>>    
>>
>
>thanks again but according to this concepts of pages
>if the size is of size 40 GB then size of each page
>should be 10kb
>
>is it correct...becaz when only it will be able to map
>the complete hard disk....
>
>thanks again
>
>
>  
>
Actually, it's 512 bytes - one sector.  As far as I can tell (looking at 
a book I've got) at the most, the IDE controllers can handle a 
read/write request of 256 sectors * 512 bytes = 128 KB.  The actual 
mapping of the hard drive is done at a number of levels.  You have the 
actual hardware addressing scheme (most modern hard drives use a system 
not too dissimilar to SCSI drives), on which you put a partition table 
(to divide the raw disk into chunks), and in each you put a filesystem 
(that keeps track of which chunk of which file is put where).

Different filesystems work in different ways - the FAT filesystem on 
floppies, USB camera memory cards, and DOS/Windows partitions, the 
ext2/ext3 filesystem that is the standard Red Hat filesystem, Reiserfs 
which is standard with SuSE and newer Slackware, and many, many others 
that are used for interoperability with other UNIX variants, or work on 
embedded systems, or work on DVD-ROM, etc.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
