From: Pierre Rousselet <pierre.rousselet@wanadoo.fr>
Subject: Re: CD writing in ext2 filesystem
Date: Tue, 23 Apr 2002 20:47:51 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CC5AC57.4010907@wanadoo.fr>
References: <200204232318.55166.mssnlayam@cs.annauniv.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: mssnlayam@cs.annauniv.edu
Cc: GNU/Linux Newbie <linux-newbie@vger.kernel.org>

Suriya Narayanan M S (by way of Suriya Narayanan M S ) wrote:
> On Monday 22 April 2002 01:29, Pierre Rousselet wrote:
>   > Suriya Narayanan M S wrote:
>   > > # mount -t ext2 -o ro /dev/cdrom /mnt/cdrom
>   >
>   > Is there any error message following this command line ?
> Yes.
> mount: wrong fs type, bad option, bad superblock on /dev/cdrom, 
>        or too many mounted file systems

What is the block size of the ext2 fs in the image.ext2 file ?
# dumpe2fs /dev/cdrom | grep size

Problems were reported in the past while trying to mount ext2 fs with bs 
1024 on an ide-scsi driven device knowing only bs 4096.
You may try to unload ide-scsi and to mount the cdrom as /dev/hdxx, or 
create an ext2 image with bs=4096 before writing it onto the cd.


Pierre
------------------------------------------------
  Pierre Rousselet <pierre.rousselet@wanadoo.fr>
------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
