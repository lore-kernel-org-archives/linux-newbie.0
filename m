From: Amin <raihan@citech-bd.com>
Subject: Re: Questions on GRUB and RH7.2
Date: Mon, 02 Jun 2003 19:30:17 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1157.1054560617@localhost.localdomain>
References: <cr@orcon.net.nz>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from cr <cr@orcon.net.nz> 
   of "Tue, 03 Jun 2003 09:02:57 +1200." <200306020907.h5297J1Y027705@dbmail-mx3.orcon.co.nz> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 3 Jun 2003 09:02:57 +1200, cr wrote:
> Can any kind person give some info on the following:
> 
> I don't seem to have a 'initrd' file - does it matter?

It does if you load a SCSI module at boot time, according to
the Red Hat Linux Customization Guide.  You can browse this
and other manuals:
http://www.redhat.com/support/resources/howto/rhl72.html

If you decide you need one, look for mkinitrd(8).  The man
page says:

mkinitrd - creates initial ramdisk images for preloading
modules

> I'm not quite sure how to address DOS.   If anyone has a dual boot Linux/DOS 
> setup, the contents of their   /boot/grub/grub.conf  or    menu.lst  files 
> would maybe give a guide.

############################################################
# Note that you do not have to rerun grub after making
# changes to this file
# NOTICE:  You have a /boot partition.  This means that
#          all kernel and initrd paths are relative to
#          /boot/, eg.
#          root (hd0,2)
#          kernel /vmlinuz-version ro root=/dev/hda6
#          initrd /initrd-version.img
#boot=/dev/hda
default=1
timeout=10
splashimage=(hd0,2)/grub/splash.xpm.gz

title Red Hat Linux (2.4.18-14Apr06_2003)
 root (hd0,2)
 kernel /vmlinuz-2.4.18-14Apr06_2003 ro
 root=LABEL=/
 initrd /initrd-2.4.18-14Apr06_2003.img

title DOS
 rootnoverify (hd0,0)
 chainloader +1
############################################################

My partition layout is like this:

DOS/Windows C: is	hda1
Linux /boot is		hda3
DOS/Windows D: is	hda5
Linux / is		hda6

hda5 and hda6 are logical partitions within hda2, which is
an extended partition.  I know, a killer layout!  I was
desperate to get Linux on my computer then, somehow :-).

So, the gub.conf says to load DOS from (hd0,0), which is
hda1.  I'm a little foggy as to what the `rootnoverify'
does, but I'm sure it's all in the GRUB info file.

HTH,
Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
