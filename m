From: cr <cr@orcon.net.nz>
Subject: How to mount CD-ROM?
Date: Wed, 30 Oct 2002 00:46:21 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021029101159.98A177519A@smtp.orcon.net.nz>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm having trouble reading my CD-ROM (actually a LG(Goldstar) 8080 cd-writer) 
drive.

It's not a hardware problem, and it worked in previous RH versions.  (It also 
installed my current RH 7.2 system quite happily).

My /etc/fstab reads   
/dev/cdrom     /mnt/cdrom    iso9660 noauto,owner,kudzu,ro 0 0

But, even su root, trying to mount it with (from memory):
mount  /dev/hdb  /mnt/cdrom    
gave (from memory)   'unknown block device'.

Trying X-cd-roast told me that ide-scsi was missing.  

Trying   insmod sg    told me that  sg  was already installed, and 
'insmod  ide-scsi'   successfully loaded  ide-scsi, after which X-cd-roast 
now reads a CD   OK (and presumably, would write).

However, I *still* can't mount or read a CD-rom in the normal way, from the 
command line.

This is what happens:
[root@localhost /]# mount -t iso9660  /dev/hdb  /mnt/cdrom
"mount: bad fs type, bad option, bad superblock on /dev/hdb, or too many 
mounted file systems
(could this be the IDE device where you in fact use ide-scsi so that sr0 or 
sda or so is needed?)"

[root@localhost /]# mount  -t iso9660  /dev/scsi0  /mnt/cdrom
"mount: special device  /dev/scsi0 does not exist"

- and the same result for sda, sr0, and so  when I try it, except that 
/dev/sda  gives 'unknown device' instead.

If I try this:
[root@localhost /]# mount  /dev/hdb  /mnt/cdrom
I get:
"dev/hdb: success
mount: you must specify the filesystem type"

But when I cd into  /mnt/cdrom, there are still no files visible...

So it doesn't want to know me, either as a IDE or a SCSI drive.   
dmesg shows it correctly:
"hdb: LG CD-RW CED-8080B, ATAPI  CD/DVD-ROM drive
............
Type: CD-ROM      ANSI SCSI Revision: 02"

I've tried reading the CDROM  HOWTO, but I can't see anything there that 
explains the problem.   Does anyone have any suggestions what to try next?

Chris Rodliffe
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
