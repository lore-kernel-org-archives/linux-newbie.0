From: lawson_whitney@juno.com
Subject: Re: problems with dual boot
Date: Thu, 24 Oct 2002 21:45:03 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021025.133927.134682184.1.lawson_whitney@juno.com>
References: <20021024211548.8355.qmail@web13404.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021024211548.8355.qmail@web13404.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: abhijit_v@yahoo.com
Cc: linux-newbie@vger.kernel.org

On Thu, 24 Oct 2002, Abhijit Vijay wrote:

> Hi All,
>
> My computer (which has Windows 2000/Red Hat Linux 7.0)
> Dual Boot with a WinNT loader, has developed problems.
> Someone else was using it and now when I select the
> Linux option at boot time, it says that some
> kernel.exe file is missing and does not boot. Windows
> boots fine. I tried using a linux boot floppy  from
> another Linux machine (Redhat 6.2) to get into the
> linux partition and install LILO (thinking that it
> might be a problem with the loader), but could not
> find the boot partition mounted.

Why would a boot floppy from one machine know where is the /boot
partition on another to mount it, unless you made it on purpose to do
that?  Make a mount point if you don't already have one handy
(mkdir /mountpoint)
and mount it yourself
mount /dev/hda? /mountpoint

> Doing fdisk /dev/hda
> gives me the error "Unable to load /dev/hda"

if this                         ^^^^ is a typo for open,
maybe you were not root and had not permission?

Why do you need fdisk?  Do you not know where is /boot?
>
> Could someone suggest a way out?
>
> Thanks in Advance,
> Abhijit.
>
Lawson
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
