From: cr <cr@orcon.net.nz>
Subject: Re: Can't see my drives
Date: Fri, 23 Aug 2002 21:18:27 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020823083231.3BD6651024@smtp.orcon.net.nz>
References: <5.1.0.14.1.20020822075404.0226b2d0@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020822075404.0226b2d0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Friday 23 August 2002 03:05, Ray Olszewski wrote:
> Your report is a bit hard to read, so please forgive me if I have
> misinterpreted what you sent.

Thanks for answering!    I'll try and clarify -

> 1.  /dev/cdrom is usually a symlink, not a real device entry. Is it
> pointing to the right actual device (/dev/hd?, if your system is IDE, or
> /dev/sd? if it is SCSI, where ? gets replaced with the right letter for the
> physical drive)?

Hmmm....   it's pointing to  /dev/scd0, from the look of it.    
>
> 2. What is "/mnt/dosC"? I imagine it is a symlink to something (since it is
> not in the fstab listing you sent), but I can't *guess* what it is.

It's a DOS drive, I only mentioned it to indicate that my permissions for the 
/mnt directory seem to be OK, otherwise it's irrelevant.   Sorry for 
confusing the issue.

> 3. In the fstab intfo you sent, both filesystems are "noauto", meaning that
> you need (as root) to execute a mount command before the filesystem will be
> present at the mount point. You do not mention doing so before trying the
> floppy, and you only mention using some KDE app to mount the CD.
> Try  running the appropriate mount commands, as root, from the command line
> (e.g., put in a floppy, then enter "mount /mnt/floppy", and do similar
> things with an iso9660 CD) and seeing it that works. If not, please post
> again, this time including
>
>          A. The COMPLETE cli command you enter and the COMPLETE error
> report. 

As 'me' *or* as su root :

mount /mnt/floppy
mount: block device /dev/fd0 is write-protected, mounting read-only   

[that's correct by the way, the floppy was write-protected]
and    ls     works fine.     Thanks.


> B. The output of "ls -l /dev/cdrom"

lrwxrwxrwx     1 root     root      9 Jul 17 02:11    /dev/cdrom -> /dev/scd0


The following don't work, for 'me' or as su root:

mount /dev/cdrom
mount: /dev/cdrom: unknown device

mount /mnt/cdrom
mount: /dev/cdrom: unknown device

mount /dev/scd0
mount: can't find /dev/scd0 in /etc/fstab or /etc/mtab


>          C. Info on what kind of CD drive you have and what IDE or SCSI
> channel it is connected to.

It's a LG 8080 cd-writer.    IDE.     Worked fine with my previous RH6.2, and 
seems to work OK with apps like X-CD-Roast.   I'm not sure what IDE channel 
it's on, I think it's the slave on the secondary IDE controller (cos I have 
three hard drives).   Would that make it hdd0?    In fact  dmesg   shows it 
as hdd - 
hdd: LG CD-RW CED8080B, ATAPI CD/DVD-ROM drive

I thought kudzu was supposed to find things like that?   But anyway, 'mount 
/dev/hdd0' just gets a 'can't find /dev/hdd0 in /etc/fstab or /etc/mtab'

The full contents of my /etc/fstab are:

LABEL=/                 /                       ext2    defaults        1 1
LABEL=/boot             /boot                   ext2    defaults        1 2
/dev/hdc5               /cr3                    ext3    defaults        1 2
/dev/hdb6               /cr4                    ext3    defaults        1 2
none                    /dev/pts                devpts  gid=5,mode=620  0 0
LABEL=/home             /home                   ext3    defaults        1 2
/dev/hdb1               /mnt/dosC               vfat    defaults        0 0
/dev/hdc1               /mnt/dosD               vfat    defaults        0 0
none                    /proc                   proc    defaults        0 0
none                    /dev/shm                tmpfs   defaults        0 0
LABEL=/usr              /usr                    ext3    defaults        1 2
/dev/hda5               swap                    swap    defaults        0 0
/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0 0
/dev/cdrom              /mnt/cdrom              iso9660 noauto,owner,kudzu,ro 
0 0


I'm not sure where some of this came from, RH 7.2 seems to have invented some 
of it.

Should I try adding a line to fstab - 
/dev/hdd          /mnt/cdrom        iso9660 owner,kudzu,ro  0 0

cr


> At 11:05 PM 8/22/02 +1200, cr wrote:
> >I'm having trouble 'seeing' the floppy drive or the CD-ROM.
> >
> >I'm running RedHat 7.2, in all previous versions I had no trouble reading
> > the floppy or CD-ROM, for example just by going    cd /mnt/cdrom       ls
> >
> >But now this doesn't work any more.   Doesn't matter whether I'm 'me' or
> >su root,
> >cd /mnt/cdrom  and   cd /mnt/floppy   apparently work, but
> >a following   ls    won't show the files.
> >
> >mdir   usually seems to work, though.
> >
> >Nautilus  and Konqueror  show /mnt/cdrom and /mnt/floppy  but not the
> >contents.     Konq in superuser mode shows a 'CDRom device' but then
> >gives a message
> >"Could not mount device
> >The reported error was
> >mount:  /dev/cdrom:  unknown device"
> >
> >On the other hand,  /mnt/dosC  works fine.
> >
> >/etc/fstab says:
> >/dev/fd0          /mnt/floppy      auto         noauto,owner,kudzu    0 0
> >/dev/cdrom      /mnt/cdrom      iso9660    noauto,owner,kudzu,ro   0 0
> >
> >Any suggestions of what might be wrong?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
