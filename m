From: "Pankaj Agarwal" <pankaj@pnpexports.com>
Subject: Re: how to identify filesystem type
Date: Thu, 19 Aug 2004 14:37:02 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001601c485cc$1d251a90$9159023d@dreammachine>
References: <20040819081300.95564.qmail@web50005.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ippi <heynumbertwo@yahoo.com>, linux-newbie@vger.kernel.org

hi,

it doesn't provide the information seeked....i am enclosing the output
below...
# file /mnt/hda5/hdstg2.img

/mnt/hda5/hdstg2.img: data

# dd if=/dev/hdc1 bs=1k count=5 | file -

standard input: data

5+0 records in

4+0 records out

# file -s /dev/hdc{,1,2,3,4,5,6,7,8,9,10}

/dev/hdc: x86 boot sector

/dev/hdc1: data

/dev/hdc2: x86 boot sector, extended partition table

/dev/hdc3: empty

/dev/hdc4: empty

/dev/hdc5: data

/dev/hdc6: data

/dev/hdc7: data

/dev/hdc8: Linux/i386 swap file version 1 (4K pages) size 63999 pages

/dev/hdc9: data

/dev/hdc10: empty

kindly suggest more about it...

thanks, Pankaj



----- Original Message -----
From: "ippi" <heynumbertwo@yahoo.com>
To: "Pankaj Agarwal" <pankaj@pnpexports.com>; <linux-newbie@vger.kernel.org>
Sent: Thursday, August 19, 2004 1:43 PM
Subject: Re: how to identify filesystem type


>
> --- Pankaj Agarwal <pankaj@pnpexports.com> wrote:
>
> > Kindly let me know how to
> > identify the filesystem in an image file or block
> > device.
> >
>
> Hi Pankaj,
>
> if you've got an image file called somefs.img you
> should be able to do:
>
>     file somefs.img
>
> If you've got a block device - say /dev/hda1 - then
> you'll need to do the following (probably as root).
> Be careful to type this command correctly or you
> could be in a world of pain
>
>     dd if=/dev/hda1 bs=1k count=5 | file -
>
> A
> DO NOT USE dd WITH ANYTHING UNDER /dev WHILE RUNNING
> AS ROOT UNLESS YOU REALLY, REALLY HAVE TO.
>
>
>
> __________________________________
> Do you Yahoo!?
> Yahoo! Mail Address AutoComplete - You start. We finish.
> http://promotions.yahoo.com/new_mail
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
