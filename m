From: Ray Olszewski <ray@comarre.com>
Subject: Re: not reading contents of cd-rom
Date: Sat, 07 Feb 2004 23:34:43 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040207231643.01f9a4a0@celine>
References: <200402081505.46721.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200402081505.46721.wheds8@ms66.hinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:05 PM 2/8/2004 +0800, S. Barret Dolph wrote:
>Somehow, I have managed to make my CD invisible.
>
>I do have the directory mnt/cdrom but nothing is shown there. (using Midnight
>Commander.)


Am I right in assuming that you meant to type /mnt/cdrom ?

While this is a traditional mount point for CDs, not all systems automount 
CDs there (in fact, in my personal experience, CDs usually do *not* 
automount on Linux systems).

First thing ... with an iso9660-filesystem CD in the drive, enter (as root)

         mount /dev/cdrom /mnt/cdrom

and see if that makes the CD "visible". (Or, if /dev/cdrom does not exist, 
usually as a symlink, replace it with the appropriate underlying device for 
the drive, for *example* /dev/hdc .)

If this command fixes the problem, you just need to make your system 
automount (and auto-umount) CDs. I'm kind of rusty on this myself -- I 
don't use automount here -- but there used to be two ways to do it ... via 
AMD (Auto Mount Daemon, a userspace process) and via autofs (a kernelspace 
method). I don't know if both are still in use ... on a quick search, I 
only found an old mini-HowTo ... while it referred to both, it was a couple 
of years old.

For more help, you'll need to tell us how your system was automounting 
before (assuming it was, of course, and that I haven't misunderstood you) 
as well as the usual basics of your setup.

If this command does not fix the problem, then you probably need to check 
that the CD drive itself is working and is recognized by your kernel. 
Details require a description of your setup. But one quick check is to see 
if a CD ripper (like cdparanoia) can read the CD drive.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
