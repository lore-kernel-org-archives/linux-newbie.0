From: cr <cr@orcon.net.nz>
Subject: Re: How to mount CD-ROM?
Date: Wed, 30 Oct 2002 20:51:52 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021030093223.7D78E71DAE@smtp.orcon.net.nz>
References: <20021029101159.98A177519A@smtp.orcon.net.nz> <3DBEA1CE.7070108@gmx.net>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DBEA1CE.7070108@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: arthurothieno@gmx.net
Cc: linux-newbie@vger.kernel.org

On Wednesday 30 October 2002 03:57, Arthur Othieno wrote:
> cr wrote:
> > I'm having trouble reading my CD-ROM (actually a LG(Goldstar) 8080
> > cd-writer) drive.
>
> You are having trouble reading CD-ROM discs in your CD-RW drive, am I
> right?

That's correct.   In other words, just using it as a CD-ROM drive.   (I can 
write OK when I need to with X-cd-roast).

> > It's not a hardware problem, and it worked in previous RH versions.  (It
> > also installed my current RH 7.2 system quite happily).
> >
> > My /etc/fstab reads
> > /dev/cdrom     /mnt/cdrom    iso9660 noauto,owner,kudzu,ro 0 0
> >
> > But, even su root, trying to mount it with (from memory):
> > mount  /dev/hdb  /mnt/cdrom
> > gave (from memory)   'unknown block device'.
> >
> > Trying X-cd-roast told me that ide-scsi was missing.
> >
> > Trying   insmod sg    told me that  sg  was already installed, and
> > 'insmod  ide-scsi'   successfully loaded  ide-scsi, after which
> > X-cd-roast now reads a CD   OK (and presumably, would write).
> >
> > However, I *still* can't mount or read a CD-rom in the normal way, from
> > the command line.
> >
> > This is what happens:
> > [root@localhost /]# mount -t iso9660  /dev/hdb  /mnt/cdrom
> > "mount: bad fs type, bad option, bad superblock on /dev/hdb, or too many
> > mounted file systems
> > (could this be the IDE device where you in fact use ide-scsi so that sr0
> > or sda or so is needed?)"
>
> You can't mount your CD-RW as hdb since it's now being emulated as a SCSI
> device. 

That's what I suspected.

> Try
>
> mounting it with `mount /dev/scd0 /mnt/cdrom' and see if that works
> (assuming this is
>
> done with ide-scsi et al currently loaded). 

OK, done that - 
"mount: dev/scd0: unknown device"
(there is a /dev/scd0 file, I looked, 11 bytes long)

> You might also want to
> change the symlink `cdrom' in /dev to point to `scd0', something like
> (as root): `cd /dev ; rm cdrom ; ln -sf scd0 cdrom'

Hmm, /dev/cdrom is actually a link   -> /dev/hdb

OK, done that,  now  /dev/cdrom  ->  /dev/scd0

But mount /dev/cdrom  /mnt/cdrom   gives 'unknown device' again...

>
> The only questions that remain to be answered are:
>
> (1) Do you want to use your CD-RW drive *only* for reading CD-ROM media
> (which I doubt is the case here), or
> (2) Do you want to use it to read and write CD-ROM/CD-R(W) media (which
> is a more practical use)?

Yes, that's what I want to do.   

> For the latter, you will have to tell the IDE CD-ROM driver to ignore
> hdb all together, and assign ide-scsi to hdb at boot. More specific
> details can be gleaned from the CD-Writing HOWTO ;)

Well, the writing is (I expect) quite OK with X-cd-roast, and it will also 
read CD-ROM images quite happily.   No problem there.

But what I want to do, and can't do, is read files off the CD-ROM in the 
usual way as if it's just another filing system.   Mount it, do a ls, copy a 
file....      Can't do it from the command line, can't do with Nautilus or 
the KDE file manager....

cr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
