From: cr <cr@orcon.net.nz>
Subject: Re: How to mount CD-ROM?
Date: Wed, 30 Oct 2002 21:46:58 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021030093224.D37F971949@smtp.orcon.net.nz>
References: <5.1.0.14.1.20021029083056.0215aec0@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021029083056.0215aec0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Wednesday 30 October 2002 05:52, Ray Olszewski wrote:
> You are trying to mix two methods of accessing the CD drive, and you can't
> do that.

I know that, I was just trying to eliminate all possibilities.   ;)

> If you use ide-scsi emulation, then you need to access the drive as a
> pseudo-scsi device, probably at /dev/scd0. (These device designators are
> sometimes distro-specific, though, so you should check if RH has changed
> thinng on you in the last version switch.) .

/dev/scd0 exists as a file.   But I can't mount it.   'unknown device'

> I notice that in all the tests you report doing, you don't report trying
> this one:
>
>          mount /dev/cdrom

Just tried it.  "unknown device"

> which should cause the fstab entry you list below to be used to find the
> right device. I don't know if that will work either, but if the
> installation really did work correctly, then /mnt/cdrom should be a symlink
> to the correct block device (easy to check).

/mnt/cdrom is a directory, not a symlink.   Which I assume means the 
installation hasn't worked?

> cdroast uses the device's (pseudo-)LUN to access it (something like
> dev=0,0,0), not its /dev/* entry, and I assume X-cd-roast is just an X
> wrapper for this app, so it does not help you find the correct /dev/* entry
>
> As to the error messages you report:
>
>          "mount: special device  /dev/scsi0 does not exist" means what it
> says -- the /dev/directory does not contains a device entry for /dev/scsi0
> . Check with "ls -l /dev/scsi*" or something similar.

Yes, there isn't a  scsi*   in /dev/

>          'unknown device'  means that the device entry exists in /dev, but
> it does not point to an actual, physical device on the system. Try mounting
> /dev/scd0 instead.

Tried that before -  "unknown device"   still

> Finally, on my system, scsi-ide emulation requires 4 modules, not the 2 you
> mentioned:
>
>          ide-scsi                7360    0
>          sg                      23588           0
>          sr_mod                  12760           0
>          scsi_mod                79480           3  [ide-scsi sg sr_mod]

Hmm.  

lsmod showed  sg  and scsi-mod.   
After  'insmod ide-scsi'   ide-scsi appeared in the list too.   
But trying 'insmod sr_mod'   just gives four error messages of 
'unresolved symbol unregister_cdrom_R94f2f104'   and similar.

X-cd-roast seems to work quite happily without it, though.

Thanks for the suggestions so far.   It seems I've tried all the logically 
obvious things.  

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
