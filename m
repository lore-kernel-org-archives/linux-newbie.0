From: whitnl73@juno.com
Subject: Re: cloning a system
Date: Sat, 12 Apr 2003 18:33:33 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030412.195848.8.2.whitnl73@juno.com>
References: <20030412090618.A197@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030412090618.A197@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Sat, 12 Apr 2003, Hal MacArgle/usr/local/bin/tartar wrote:

> Greetings: Years ago when HD's were less than 1gB I used the dd route
> to clone a drive for backup but never had the reason to check and see
> if it was a valid idea.. Later, I think on this list, someone pointed
> out that the dd route was not a good idea - think it may have been
> Lawson IIRC..

If your BIOS doesn't support the Enhanced BIOS call and the packet-call
interface (invented in 1998) lilo is going to have to use CHS
addressing, and differeces in geometry and bad sectors are liable to
play hob with it.
>
> I did note that the cloned drive, even though formatted larger than
> the source drive ended up the "same" size as the source.. I can't
> find my notes but seem to remember using the following:
> dd if=/dev/hda of=/dev/hdc bs=8192
>
> Approaching senility in the brain department I'm hoping someone will
> pick up on this and write a mini-HOWTO as I think it's a needed
> project.. At 0400 this morning I wondered if the best way would be to
> boot the machine with BasicLinux, into ramdisk, and then invoke dd
> from it - presuming Steven put dd in BL.. Not sure.

/usr/local/bin/tartar:
#!/bin/bash
##copy a directory or partition
tar -C "$1" -cOl . | tar -C "$2" -xpf -

mount <source device> /mnt/source
mount <target device> /mnt/targat

tartar /mnt/source /mnt/target
...
if your BIOS is old enough to need a /boot partition, mount it on the
target / (I'll call that /mnt/target) after you copy it, and install
lilo:

lilo -r /mnt/target
>
> Somewhere along my former testing I seem to remember /proc giving a
> problem but that may have been using another routine.. Sometime in
> the future someone may figure a way to RAID our normal brain. <grin>
>
> I hope someone keeps this thread alive..
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable
>

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
