From: whitnl73@juno.com
Subject: Re: tar for "full" floppy backup?
Date: Sat, 7 Dec 2002 21:10:58 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021207.211305.134684296.3.whitnl73@juno.com>
References: <3DF253FB.FCE749BE@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF253FB.FCE749BE@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: nc8q@gelm.net
Cc: linux-newbie@vger.kernel.org

On Sat, 7 Dec 2002, Chuck Gelm wrote:

>  I did
>
> tar -cyvf /boot /dev/fd0
>  and
> /mnt# tar -xyvf /dev/fd0
>  and it created
> /mnt/boot/
>  and all the files from /boot appeared in /mnt/boot

Yes, it will do that.  cd to where you want the files restored to first,
or use -C:

tar -C / -xyvf /dev/fd0
>
>  Next I tried
> tar -cvMf /dev/fd0 /etc
>  and after some floppy action, I was prompted:
>
> "Prepare volume #2 for /dev/fd0 and hit return:"
>
> I'd recommend running 'badblocks' on the diskettes
> and using only those that report 0 bad blocks.
> ;-)

I don't like using a raw floppy for anything but mkfs.
I'd rather make a filesystem on each one and save a named file on it.
That way, if I can't read my writing on the label, all is not lost.
Restore the files to their own [temporary] directory, cat them together,
and untar them.
You are trying to use a floppy as a tape, and it just isn't really a
tape.  Come to think of it, a tape isn't a very good tape either.
>
> tar --version
> tar (GNU tar) 1.13
>  ...
>
> HTH, Chuck

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
