From: ippi <heynumbertwo@yahoo.com>
Subject: Re: how to identify filesystem type
Date: Thu, 19 Aug 2004 02:48:19 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819094819.75049.qmail@web50004.mail.yahoo.com>
References: <001601c485cc$1d251a90$9159023d@dreammachine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001601c485cc$1d251a90$9159023d@dreammachine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pankaj Agarwal <pankaj@pnpexports.com>, linux-newbie@vger.kernel.org



I see what you mean. I created a reiserfs filesystem
and file only recognised it as data. If the block
devices are all hard disk partitions you should 
try fdisk:

    fdisk -l

Also, if you're interested in the filesystems of 
block devices that are already mounted, then just
type:

    mount

I don't know what is on the image /mnt/hda5/hdstg2.img
but you could try to mount it and see if it's 
recognised. Just do the following:

    mkdir mp
    mount -v -o loop /mnt/hda5/hdstg2.img mp

I take it you are sure that there are filesystems on
these devices and that they are not corrupted!


--- Pankaj Agarwal <pankaj@pnpexports.com> wrote:
> hi,
> 
> it doesn't provide the information seeked....i am
> enclosing the output
> below...
> # file /mnt/hda5/hdstg2.img
> 
> /mnt/hda5/hdstg2.img: data
> 
> # dd if=/dev/hdc1 bs=1k count=5 | file -
> 
> standard input: data
> 
> 5+0 records in
> 
> 4+0 records out
> 
> # file -s /dev/hdc{,1,2,3,4,5,6,7,8,9,10}
> 
> /dev/hdc: x86 boot sector
> 
> /dev/hdc1: data
> 
> /dev/hdc2: x86 boot sector, extended partition table
> 
> /dev/hdc3: empty
> 
> /dev/hdc4: empty
> 
> /dev/hdc5: data
> 
> /dev/hdc6: data
> 
> /dev/hdc7: data
> 
> /dev/hdc8: Linux/i386 swap file version 1 (4K pages)
> size 63999 pages
> 
> /dev/hdc9: data
> 
> /dev/hdc10: empty
> 
> kindly suggest more about it...
> 



		
__________________________________
Do you Yahoo!?
Yahoo! Mail - You care about security. So do we.
http://promotions.yahoo.com/new_mail
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
