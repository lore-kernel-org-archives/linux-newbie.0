From: lawson_whitney@juno.com
Subject: Re: tar question (was Re: nomore newbies??)
Date: Sun, 19 May 2002 19:42:45 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020519.194756.134663624.0.lawson_whitney@juno.com>
References: <200205192309.g4JN9Et17254@langhans.hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205192309.g4JN9Et17254@langhans.hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com, lawson_whitney@juno.com
Cc: ik5bcu@tin.it, linux-newbie@vger.kernel.org

On Sun, 19 May 2002, Haines Brown wrote:

> I'm trying to copy a directory tree from one mounted hard disk to
> another. I want to copy the contents of a directory named "backups" on
> a secondary SCSI HD to one of the same name on an external USB mass
> storage device.
>
> The source is /mnt/sdb1/storage/backups
> The target is /mnt/mirror/storage/
>
> Root changes to the source "backups" directory and runs the
> following:
>
>     tar cf - . | (cd ../../../mirror/storage/backups tar xvf -)
>     ./
>
> Nothing happens. No error message about not being able to navigate the
> path to find the directory, no sound of disk activity, no resulting
> files.

You are piping tar -cf - into cd, which does nothing with it and writes
an empty stdout.
>
> So I tried:
>
>    tar -l -cpf - /mnt/sdb1/storage/backups | tar -C
>    /mnt/mirror/storage/backups -pxf -
>
> This did create a backup, but reproduced the path (/mnt/mirror/
> storage/backups/mnt/sdb1/storage/backups) and gave me a lot of errors
> about not being able to copy symlinks and early on some errors about
> not being able to reproduce ownership. When I try to reduce the source
> to ".", tar complains about the empty source.
>
> Haines Brown
>
Feel free to use tartar (I keep one in /usr/local/bin):

#!/bin/bash
tar -C "$1" -cOl . | tar -C "$2" -xpf -

This requires the destination directory exists, but it will do what you
want, I think, if invoked:

[mkdir /mnt/mirror/storage/backups]
tartar /mnt/sdb1/storage/backups /mnt/mirror/storage/backups

tar copies any directories named in the place it expects directories,
but not those named in -C dir.

Lawson
---oops---




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
