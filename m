From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Linux Mount Partitions
Date: 25 Oct 2002 14:32:23 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035552743.6875.74.camel@zebra.vil.ite.mee.com>
References: <20021025130434.49227.qmail@web13402.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021025130434.49227.qmail@web13402.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

/dev/cdrom is a link to a "device special file" which the system uses to
communicate with the cdrom drive. It is not a directory, so you couldn't
mount something on it.

The device files are (a little like) pointers to hardware. If you start
trying to change them around, you usually end up screwing up the system
in a big way unless you absolutely know what you are doing

As to what is normally mounted where: this varies from one build of unit
to another. Quite often, you have real partitiona mounted under /,
/boot, /usr, and possibly /home.

The reason file systems are mounted where they are is pretty much
historical convention; it is _possible_ to set up a system with
completely different directory structures, but it's pretty rare that
you'd do that because the conventions are well understood by unix /
linux savvy folks, a non-standard setup can take forever to understand,
and you gain nothing by changing it.

I guess it's just the way we all got used to. :)

To find out exactly what you have mounted where on your system there are
a couple of ways. The most complete techie way is to look at the
contents of /etc/fstab (pron "Eff-Ess-Tab", not ""Fstab") which tells
the system what to mount where. 

An easier way is to go to a command prompt and type:

df -k

and you should get a list a bit like this:

Filesystem           1k-blocks      Used Available Use% Mounted on
/dev/hda2             37334192  15128396  20309324  43% /
/dev/hda1               101089      8902     86968  10% /boot
none                    256948         0    256948   0% /dev/shm

"Filesystem" is the thing that's mounted, and the last column tells you
what it's mounted on.

Paul.


On Fri, 2002-10-25 at 14:04, Abhijit Vijay wrote:
> Hi All,
> 
> I had a query regarding linux mount partitions, which
> I was trying to understand. I understand that Linux
> mounts certain partitions by default at certain
> locations. You have the kernel image which is located
> at /boot (?) and the root partition /root mounted at /
> But why is it that /dev/cdrom is mounted by default on
> /mnt/cdrom? Why not reduce confusion and mount it on
> /dev/cdrom itself? Also, what are the other partitions
> that are mounted by default and their default
> locations?
> 
> Thanks in advance,
> Regards,
> Abhijit.
> 
> __________________________________________________
> Do you Yahoo!?
> Y! Web Hosting - Let the expert host your web site
> http://webhosting.yahoo.com/
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
