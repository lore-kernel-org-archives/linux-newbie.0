From: Amin <raihan@citech-bd.com>
Subject: Re: Hard disk repartitioning-II
Date: Fri, 4 Apr 2003 22:29:07 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030404162907.GA4866@localhost.localdomain>
References: <20030404145134.3911.qmail@web20711.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030404145134.3911.qmail@web20711.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, Apr 04, 2003 at 06:51:34AM -0800, Arthur Kng wrote:

>    1)back up all my data at a friends place. fdisk and
> delete all existing partitions. make a          
> primary partition of 10GB on which i'll load the
> Windows OS and which will also have the         data
> which i want to access from Win and Linux.
> 
>    2)in the 10GB thats left i'll have 4GB for '/'
> where i'll load Linux.
> 
>    3)the remaining 6GB will be the '/home' partition,
> which will have the linux only data.
> 
>    4)mine is a desktop machine for normal home use. at
> any given time i run atmost                     
> (browser+mp3player) or (a programming IDE + mp3player)
> etc. now i have 128MB of RAM so 
>        i'm thinking of doing away with the swap
> partition but i'm not too sure about this. so if      
>  i'm wrong please do tell me.

I think there's an issue here about Linux needing its boot
partition within the first 1024 cylinders of the hard disk,
or something like that.  In any case, here's what I'd
recommend:

hda1: 4 GB FAT Primary
hda3: 100 MB ext3 Primary
hda4: 150 MB linux-swap
hda2: Extended
 hda5: 7 GB logical FAT
 hda6: 7 GB logical ext3 Growable

hda1 is to house Windows' system files (the C: drive); hda3
for Linux's ``/boot'' directory; and hda2 being the extended
partition that holds hda5 and hda6.  hda5 you can use to
store non-system Windows stuff (the D: drive); and hda6 for
your ``/'' directory in Linux.

About the swap space --- call me old-fashioned but I think
it really is necessary.

About hda6 being ``growable'': you may or may not choose to
make it so, depending on how much expertise you're able to
garner on the subject.  If you do make it so, you'll be able
to use every last megabyte of your hard disk.  If not,
you'll ``lose'' about 1.76 MB, because I rounded off space
to the nearest integer.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
