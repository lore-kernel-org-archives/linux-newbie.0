From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Sun, 19 May 2002 15:48:27 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0205191540130.15415-100000@pppg_penguin.linux.bogus>
References: <2.2.32.20020518054327.03bdbe44@[192.168.1.23]>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2.2.32.20020518054327.03bdbe44@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: Mark Johnson <rmjohnson144@adelphia.net>, linux-newbie@vger.kernel.org

On Fri, 17 May 2002, Ray Olszewski wrote:

> 
> 3. I then added (in /etc/modules) the modules I neded to modprobe in at
> boot/init. That list is:
> 
> # the stuff to enable ide-scsi emulation for the CD-ROM
> scsi_mod
> sr_mod scd0
> sg
> ide-scsi
> 
 I remember having lots of trouble getting cdrecord set up correctly last
year, at that time some of the problems were probably due to moving to a
2.4 kernel. I'm including the following from my modules.conf in the hope
that it might be useful to somebody. I've got a CD-R on what used to be
/dev/hdb, and a CDROM on what was /dev/hdc, both accessed as if scsi, but
a zip drive on /dev/hdd accessed as an ide device. 

# cd record, and try to use ide-scsi for /cd but not /zip
pre-install ide-scsi modprobe -k ide-floppy
alias scsi_hostadapter ide-scsi
alias scd0 sr_mod # load sr_mod upon access of scd0
alias scd1 sr_mod # load sr_mod upon access of scd1
pre-install sg modprobe ide-scsi # load ide-scsi before sg
pre-install sr_mod modprobe ide-scsi
# load scsi_mod before ide-scsi, sr_mod
pre-install ide-scsi modprobe scsi_mod

> 
> 4. Last, I modified lilo.conf so that the IDE CD-R/W drive would NOT be
> initialized as an IDE devide at boot (so the ide-scsi module can grab it
> instead). I made this change (the last line shown) to lilo.conf:
> 
> image=/boot/vmlinuz-2.4.17
>         label=Linux
>         read-only
>         append="hdd=ide-scsi"
> 

Actually, you don't need to do this append any more, at least if
modules.conf is correct!

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
