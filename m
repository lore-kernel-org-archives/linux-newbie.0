From: cr <cr@orcon.net.nz>
Subject: Re: Can't see my drives
Date: Sat, 24 Aug 2002 20:27:49 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020824072227.047025185A@smtp.orcon.net.nz>
References: <5.1.0.14.1.20020822075404.0226b2d0@celine> <5.1.0.14.1.20020823084240.02277630@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020823084240.02277630@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 24 August 2002 03:58, Ray Olszewski wrote:
> Selected responses only (though the additional detail in your reply
> helped).
>
> You say your /dev/cdrom symlink is to /dec/scd0 . That's a scsi device, and
> you have an IDE drive (apparently as the secondary slave, since that is
> what /dev/hdd is). 

Correct.

> Unless you are running scsi-ide emulation (see below),
> your immediate problem is simply that the synmlink is wrong. Try removing
> it by hand and repointing it to the right place, that is (as root)
>
>          rm /dev/cdrom
>          ln -s /dev/hdd /dev/cdrom
>
> Then see if you can mount an iso9660 CD successfully.

Tried that, got (as 'me') 
"mount:  only root can mount /dev/cdrom on /mnt/cdrom"

and, as  su root, I got:
"mount:  wrong fs type, bad option, bad superblock on /dev/cdrom,
or too many mounted filesystems
(could this be the IDE device where you in fact use 
ide-scsi so that sr0 or sda or so is needed?)"

> On another matter, someone else asked you to check permissions. That was
> good advice in concept, but wrong in a detail -- you need to check the
> permissions on the underlying device, not on the symlink. Symlinks always
> are mode 777, as you reported.
>
> Finally, I note that your CD device is a CD writer. To use it as a
> *writer*, you do need to implement ide-scsi emulation.  So I'd guess that
> that was how you had it set up when it worked before (in which case,
> /dev/scd0 would be the right device to use when accessing it) ... but that
> in doing the upgrade, you lostr that emulation. 

I remember now, and I'd say you're exactly right!   

Is this going to happen *every* time I upgrade?   8(

> Since I use neither Red Hat
> nor kudzu, I can't tell you in detail how to restore ide-scsi emulation,
> but the outline is --
>
>          1. Pass a boottime argument to the kernel (in lilo.conf) of this
> form: append="hdd=ide-scsi"
>
>          2. Enable ide-scsi emulation in the kernel. One way is by
> compiling and loading this set of modules:
>                  # the stuff to enable ide-scsi emulation for the CD-ROM
>                  scsi_mod
>                  sr_mod scd0
>                  sg
>                  ide-scsi
>
>          3. For reading, the CD drive should then look like it is a scsi
> device, at /dev/scd0
>
>          4. For writing, it is *probably* at lun 0,0,0 -- you can check
> this with "cdrecord --scanbus".

Yes, it is 0,0,0

I'm going to search back through my files and try and find the instructions I 
used when first installing the CD-writer.   Unfortunately the original is on 
a cd-rom which I can't read at the moment....     :)

As a related question, is there anywhere on the Internet a page that explains 
(in simple language) what the boot-up sequence of Linux is (and XFree86 for 
that matter) and what files get read in what order?   Man pages are always 
much too detailed and limited in scope to be easy to follow.

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
