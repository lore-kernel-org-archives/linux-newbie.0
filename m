From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to mount CD-ROM?
Date: Tue, 29 Oct 2002 08:52:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021029083056.0215aec0@celine>
References: <20021029101159.98A177519A@smtp.orcon.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021029101159.98A177519A@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You are trying to mix two methods of accessing the CD drive, and you can't 
do that.

If you use ide-scsi emulation, then you need to access the drive as a 
pseudo-scsi device, probably at /dev/scd0. (These device designators are 
sometimes distro-specific, though, so you should check if RH has changed 
thinng on you in the last version switch.) .

I notice that in all the tests you report doing, you don't report trying 
this one:

         mount /dev/cdrom

which should cause the fstab entry you list below to be used to find the 
right device. I don't know if that will work either, but if the 
installation really did work correctly, then /mnt/cdrom should be a symlink 
to the correct block device (easy to check).

cdroast uses the device's (pseudo-)LUN to access it (something like 
dev=0,0,0), not its /dev/* entry, and I assume X-cd-roast is just an X 
wrapper for this app, so it does not help you find the correct /dev/* entry

As to the error messages you report:

         "mount: special device  /dev/scsi0 does not exist" means what it 
says -- the /dev/directory does not contains a device entry for /dev/scsi0 
. Check with "ls -l /dev/scsi*" or something similar.

         'unknown device'  means that the device entry exists in /dev, but 
it does not point to an actual, physical device on the system. Try mounting 
/dev/scd0 instead.

Finally, on my system, scsi-ide emulation requires 4 modules, not the 2 you 
mentioned:

         ide-scsi                7360    0
         sg                      23588           0
         sr_mod                  12760           0
         scsi_mod                79480           3  [ide-scsi sg sr_mod]


At 12:46 AM 10/30/02 +1300, cr wrote:
>I'm having trouble reading my CD-ROM (actually a LG(Goldstar) 8080 cd-writer)
>drive.
>
>It's not a hardware problem, and it worked in previous RH versions.  (It also
>installed my current RH 7.2 system quite happily).
>
>My /etc/fstab reads
>/dev/cdrom     /mnt/cdrom    iso9660 noauto,owner,kudzu,ro 0 0
>
>But, even su root, trying to mount it with (from memory):
>mount  /dev/hdb  /mnt/cdrom
>gave (from memory)   'unknown block device'.
>
>Trying X-cd-roast told me that ide-scsi was missing.
>
>Trying   insmod sg    told me that  sg  was already installed, and
>'insmod  ide-scsi'   successfully loaded  ide-scsi, after which X-cd-roast
>now reads a CD   OK (and presumably, would write).
>
>However, I *still* can't mount or read a CD-rom in the normal way, from the
>command line.
>
>This is what happens:
>[root@localhost /]# mount -t iso9660  /dev/hdb  /mnt/cdrom
>"mount: bad fs type, bad option, bad superblock on /dev/hdb, or too many
>mounted file systems
>(could this be the IDE device where you in fact use ide-scsi so that sr0 or
>sda or so is needed?)"
>
>[root@localhost /]# mount  -t iso9660  /dev/scsi0  /mnt/cdrom
>"mount: special device  /dev/scsi0 does not exist"
>
>- and the same result for sda, sr0, and so  when I try it, except that
>/dev/sda  gives 'unknown device' instead.
>
>If I try this:
>[root@localhost /]# mount  /dev/hdb  /mnt/cdrom
>I get:
>"dev/hdb: success
>mount: you must specify the filesystem type"
>
>But when I cd into  /mnt/cdrom, there are still no files visible...
>
>So it doesn't want to know me, either as a IDE or a SCSI drive.
>dmesg shows it correctly:
>"hdb: LG CD-RW CED-8080B, ATAPI  CD/DVD-ROM drive
>............
>Type: CD-ROM      ANSI SCSI Revision: 02"
>
>I've tried reading the CDROM  HOWTO, but I can't see anything there that
>explains the problem.   Does anyone have any suggestions what to try next?




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
