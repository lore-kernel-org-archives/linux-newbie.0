From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Tue, 21 May 2002 20:25:29 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0205212006510.24300-100000@pppg_penguin.linux.bogus>
References: <3CE94665.8090104@adelphia.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3CE94665.8090104@adelphia.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mark Johnson <rmjohnson144@adelphia.net>
Cc: linux-newbie@vger.kernel.org

Copied back to the list.

On Mon, 20 May 2002, Mark Johnson wrote:

> I seem to have everything working fine for the cd-rw, I found a 
> modules.conf that was similar to the one Ray gave me and I tweaked it to 
> fit my system.  But I couldn't seem to duplicate cd's?  I have a dvd 
> already and it is not recognizing it, do I need to activate it with the 
> ide-scsi?  I tried adding the one line below to activate it but it 
> doesn't seem to show up.  I even tried to put hdc=ide-scsi in lilo.conf 
> to help point at, but still no luck?  any clues as to how to activate it 
> for the cd burner programs to read it.  here is my modules.conf:
> 
> alias parport_lowlevel parport_pc
> alias eth0 8139too
> alias sound-slot-0 trident
> post-install sound-slot-0 /bin/aumix-minimal -f /etc/.aumixrc -L 
>  >/dev/null 2>&1 || :
> pre-remove sound-slot-0 /bin/aumix-minimal -f /etc/.aumixrc -S 
>  >/dev/null 2>&1 || :
> alias usb-controller usb-ohci
> # the stuff to enable ide-scsi emulation for the CD-ROM
> options ide-cd ignore=hdd        # tell the ide-cd module to ignore hdd
> alias scd0 sr_mod            # load sr_mod upon access of scd0
> alias scd1 sr_mod            # load sr_mod upon access of scd1 <---- 
> added from your file
> #pre-install ide-scsi modprobe imm    # uncomment for some zip drives only
> pre-install sg    modprobe ide-scsi    # load ide-scsi before sg
> pre-install sr_mod modprobe ide-scsi    # load ide-scsi before sr_mod
> pre-install ide-scsi modprobe ide-cd    # load ide-cd before ide-scsi
> 
> I can access them both the dvd and cd-rw through linux ok, just not the 
> dvd with the cd burner programs (KOnCD or X-CD-Roast).  if I type 
> cdrecord --scanbus it only recognizes the cd-rw drive.
> 

 Strange, it's usually the writer that is the problem. I know nothing
about KOnCD, but I've used X-CD-Roast to copy audio tracks from _my_
CDROM, which is technically a DVD now that I think about it. I read you as
saying you're trying to copy audio tracks.

 Your modules.conf looks reasonable. 

 Both of my devices work through ide-scsi. If I want to mount a filesystem
from them, one of them is/dev/scd0 and the other /dev/scd1. You say you
can access the dvd ok through linux, except from the cdrecord or the
graphical front ends, so which device do you access ?

 It's the best part of a year since I got my setup working, so the detail
is getting a little hazy. I'm assuming both the DVD and the CDRW are ATAPI
devices and using SCSI emulation, but your comment that you added the
alias for scd1 makes me question exactly how you have them, and the
kernel, configured. My memory says that if you compile ide-cd into the
kernel you will not be able to use a CDRW as a scsi CDROM. Hmm, apart from
writing to the CDRW, can you successfully mount an (iso) data CD in it
using /dev/scd0 ?

 Also, which kernel ?
> -=Mark=-
> 
> Ken Moffat wrote:
> [snip my original posting] 

Ken

-- 
Listen to others, even to the dull and ignorant;
     for you too may be a Manager some day.
-- from the BFOH Desidoreplicator.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
