From: Yawar Amin <yawar.amin@gmail.com>
Subject: Re: mount problem
Date: Thu, 28 Jul 2005 18:32:50 +0800
Message-ID: <efc7f7d0050728033216d65c03@mail.gmail.com>
References: <20050728102058.83858.qmail@web40611.mail.yahoo.com>
Reply-To: Yawar Amin <yawar.amin@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050728102058.83858.qmail@web40611.mail.yahoo.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 7/28/05, rekha vn <vidiyala_r@yahoo.com> wrote:
> i'm getting the same error for both the commands.
> fs type /dev/hda1 not supported by kernel
> fs type /dev/hda5 not supported by kernel
> 
> any problem with the kernel settings?

mount -t filesystem-type something somewhere

`filesystem-type' depends on your partition. `something' is the
partition, here /dev/hda1 or /dev/hda5. `somewhere' is the mount point
-- the place where you go to access the files once the partition is
mounted. E.g.,

# mount -t vfat /dev/hda5 /mnt/d

Once the above command is run, you can

$ cd /mnt/d
$ ls

and hopefully you'll see your files.

-- 
Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
