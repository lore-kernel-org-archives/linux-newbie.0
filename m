From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't see my drives
Date: Fri, 23 Aug 2002 08:58:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020823084240.02277630@celine>
References: <5.1.0.14.1.20020822075404.0226b2d0@celine>
 <5.1.0.14.1.20020822075404.0226b2d0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020823083231.3BD6651024@smtp.orcon.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: cr@orcon.net.nz, linux-newbie@vger.kernel.org

Selected responses only (though the additional detail in your reply helped).

You say your /dev/cdrom symlink is to /dec/scd0 . That's a scsi device, and 
you have an IDE drive (apparently as the secondary slave, since that is 
what /dev/hdd is). Unless you are running scsi-ide emulation (see below), 
your immediate problem is simply that the synmlink is wrong. Try removing 
it by hand and repointing it to the right place, that is (as root)

         rm /dev/cdrom
         ln -s /dev/hdd /dev/cdrom

Then see if you can mount an iso9660 CD successfully.

On another matter, someone else asked you to check permissions. That was 
good advice in concept, but wrong in a detail -- you need to check the 
permissions on the underlying device, not on the symlink. Symlinks always 
are mode 777, as you reported.

Finally, I note that your CD device is a CD writer. To use it as a 
*writer*, you do need to implement ide-scsi emulation.  So I'd guess that 
that was how you had it set up when it worked before (in which case, 
/dev/scd0 would be the right device to use when accessing it) ... but that 
in doing the upgrade, you lostr that emulation. Since I use neither Red Hat 
nor kudzu, I can't tell you in detail how to restore ide-scsi emulation, 
but the outline is --

         1. Pass a boottime argument to the kernel (in lilo.conf) of this form:
                 append="hdd=ide-scsi"

         2. Enable ide-scsi emulation in the kernel. One way is by 
compiling and loading this set of modules:
                 # the stuff to enable ide-scsi emulation for the CD-ROM
                 scsi_mod
                 sr_mod scd0
                 sg
                 ide-scsi

         3. For reading, the CD drive should then look like it is a scsi 
device, at /dev/scd0

         4. For writing, it is *probably* at lun 0,0,0 -- you can check 
this with "cdrecord --scanbus".

At 09:18 PM 8/23/02 +1200, cr wrote:
>On Friday 23 August 2002 03:05, Ray Olszewski wrote:
> > Your report is a bit hard to read, so please forgive me if I have
> > misinterpreted what you sent.
>
>Thanks for answering!    I'll try and clarify -
>
> > 1.  /dev/cdrom is usually a symlink, not a real device entry. Is it
> > pointing to the right actual device (/dev/hd?, if your system is IDE, or
> > /dev/sd? if it is SCSI, where ? gets replaced with the right letter for the
> > physical drive)?
>
>Hmmm....   it's pointing to  /dev/scd0, from the look of it.
> >
> > 2. What is "/mnt/dosC"? I imagine it is a symlink to something (since it is
> > not in the fstab listing you sent), but I can't *guess* what it is.
>
>It's a DOS drive, I only mentioned it to indicate that my permissions for the
>/mnt directory seem to be OK, otherwise it's irrelevant.   Sorry for
>confusing the issue.
>
> > 3. In the fstab intfo you sent, both filesystems are "noauto", meaning that
> > you need (as root) to execute a mount command before the filesystem will be
> > present at the mount point. You do not mention doing so before trying the
> > floppy, and you only mention using some KDE app to mount the CD.
> > Try  running the appropriate mount commands, as root, from the command line
> > (e.g., put in a floppy, then enter "mount /mnt/floppy", and do similar
> > things with an iso9660 CD) and seeing it that works. If not, please post
> > again, this time including
> >
> >          A. The COMPLETE cli command you enter and the COMPLETE error
> > report.
>
>As 'me' *or* as su root :
>
>mount /mnt/floppy
>mount: block device /dev/fd0 is write-protected, mounting read-only
>
>[that's correct by the way, the floppy was write-protected]
>and    ls     works fine.     Thanks.
>
>
> > B. The output of "ls -l /dev/cdrom"
>
>lrwxrwxrwx     1 root     root      9 Jul 17 02:11    /dev/cdrom -> /dev/scd0
>
>
>The following don't work, for 'me' or as su root:
>
>mount /dev/cdrom
>mount: /dev/cdrom: unknown device
>
>mount /mnt/cdrom
>mount: /dev/cdrom: unknown device
>
>mount /dev/scd0
>mount: can't find /dev/scd0 in /etc/fstab or /etc/mtab
>
>
> >          C. Info on what kind of CD drive you have and what IDE or SCSI
> > channel it is connected to.
>
>It's a LG 8080 cd-writer.    IDE.     Worked fine with my previous RH6.2, and
>seems to work OK with apps like X-CD-Roast.   I'm not sure what IDE channel
>it's on, I think it's the slave on the secondary IDE controller (cos I have
>three hard drives).   Would that make it hdd0?    In fact  dmesg   shows it
>as hdd -
>hdd: LG CD-RW CED8080B, ATAPI CD/DVD-ROM drive
>
>I thought kudzu was supposed to find things like that?   But anyway, 'mount
>/dev/hdd0' just gets a 'can't find /dev/hdd0 in /etc/fstab or /etc/mtab'
>
>The full contents of my /etc/fstab are:
>
>LABEL=/                 /                       ext2    defaults        1 1
>LABEL=/boot             /boot                   ext2    defaults        1 2
>/dev/hdc5               /cr3                    ext3    defaults        1 2
>/dev/hdb6               /cr4                    ext3    defaults        1 2
>none                    /dev/pts                devpts  gid=5,mode=620  0 0
>LABEL=/home             /home                   ext3    defaults        1 2
>/dev/hdb1               /mnt/dosC               vfat    defaults        0 0
>/dev/hdc1               /mnt/dosD               vfat    defaults        0 0
>none                    /proc                   proc    defaults        0 0
>none                    /dev/shm                tmpfs   defaults        0 0
>LABEL=/usr              /usr                    ext3    defaults        1 2
>/dev/hda5               swap                    swap    defaults        0 0
>/dev/fd0                /mnt/floppy             auto    noauto,owner,kudzu 0 0
>/dev/cdrom              /mnt/cdrom              iso9660 noauto,owner,kudzu,ro
>0 0
>
>
>I'm not sure where some of this came from, RH 7.2 seems to have invented some
>of it.
>
>Should I try adding a line to fstab -
>/dev/hdd          /mnt/cdrom        iso9660 owner,kudzu,ro  0 0
>
>cr
>
>
> > At 11:05 PM 8/22/02 +1200, cr wrote:
> > >I'm having trouble 'seeing' the floppy drive or the CD-ROM.
> > >
> > >I'm running RedHat 7.2, in all previous versions I had no trouble reading
> > > the floppy or CD-ROM, for example just by going    cd /mnt/cdrom       ls
> > >
> > >But now this doesn't work any more.   Doesn't matter whether I'm 'me' or
> > >su root,
> > >cd /mnt/cdrom  and   cd /mnt/floppy   apparently work, but
> > >a following   ls    won't show the files.
> > >
> > >mdir   usually seems to work, though.
> > >
> > >Nautilus  and Konqueror  show /mnt/cdrom and /mnt/floppy  but not the
> > >contents.     Konq in superuser mode shows a 'CDRom device' but then
> > >gives a message
> > >"Could not mount device
> > >The reported error was
> > >mount:  /dev/cdrom:  unknown device"
> > >
> > >On the other hand,  /mnt/dosC  works fine.
> > >
> > >/etc/fstab says:
> > >/dev/fd0          /mnt/floppy      auto         noauto,owner,kudzu    0 0
> > >/dev/cdrom      /mnt/cdrom      iso9660    noauto,owner,kudzu,ro   0 0
> > >
> > >Any suggestions of what might be wrong?

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
