From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: tar confined to partitions
Date: Tue, 3 Sep 2002 10:50:42 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209031450.g83Eogs17031@hartford-hwp.com>
References: <5.1.0.14.1.20020902094227.021b5bd0@celine>
 <5.1.0.14.1.20020902094227.021b5bd0@celine> <5.1.1.6.0.20020903102834.00b7ff88@interzone.anexia.co.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20020903102834.00b7ff88@interzone.anexia.co.uk>
	(message from Carl Lawton on Tue, 03 Sep 2002 10:45:02 +0100)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org, linux-newbie@hartford-hwp.com

Carl,

> If i have it right you are just trying to copy everything to /mnt/mirror
> 
> In which case you could just do:
> 
>         find / -print | egrep -v "^/mnt/mirror|^/proc" | cpio -pdmuv /mnt/mirror

I get the sense that cpio is a more straightforwared way to do a copy,
and the script you kindly pass along may well do the job. However, I'd
like to ask three questions about it.

First, I've often heard of measures taken not to backup /proc, and
indeed it makes no sense to do so. However, what would be the
consequence of a restoration from a mirror that copied over old /proc
info? Would it do any harm?      

Second. This script prevents backing up the backup, which seems off
hand like a way to avoid an infinite recursion. However, such a
recursion did not actually seem to happen, and I don't know why. That
is, using tar (tar -C "$1" -cOl . | tar -C "$2" -xpf -), the /proc and
/mnt/mirror directories in the backup copy appear to be empty. Why
empty directories?

Third, the target is not just a mirror drive, but a set of dated
directories on it, and so I'd like to pass a command line argument to
the script to name the target directory. For example, would this work?

find / -print | egrep -v "^/mnt/mirror|^/proc" | cpio -pdmuv
/mnt/mirror/"$1"

[above line is wrapped]. Even better, it would be nice to create the
target directory as part of the mirroring process:

mkdir /mnt/mirror/"$1"
find / -print | egrep -v "^/mnt/mirror|^/proc" | cpio -pdmuv
/mnt/mirror/"$1"

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
