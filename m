From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Can't see my drives
Date: Fri, 23 Aug 2002 23:47:33 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208232340290.8397-100000@Consulate.UFP.CX>
References: <5.1.0.14.1.20020823084240.02277630@celine>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020823084240.02277630@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: cr@orcon.net.nz, Linux Newbies <linux-newbie@vger.kernel.org>

Hi Ray, CR.

> Selected responses only (though the additional detail in your reply
> helped).
>
> You say your /dev/cdrom symlink is to /dec/scd0 . That's a scsi
> device, and you have an IDE drive (apparently as the secondary
> slave, since that is what /dev/hdd is). Unless you are running
> scsi-ide emulation (see below), your immediate problem is simply
> that the synmlink is wrong. Try removing it by hand and repointing
> it to the right place, that is (as root)
>
>          rm /dev/cdrom
>          ln -s /dev/hdd /dev/cdrom
>
> Then see if you can mount an iso9660 CD successfully.
>
> On another matter, someone else asked you to check permissions. That
> was good advice in concept, but wrong in a detail -- you need to
> check the permissions on the underlying device, not on the symlink.
> Symlinks always are mode 777, as you reported.

All agreed so far, at least in the context it is given.

> Finally, I note that your CD device is a CD writer. To use it as a
> *writer*, you do need to implement ide-scsi emulation.  So I'd guess
> that that was how you had it set up when it worked before (in which
> case, /dev/scd0 would be the right device to use when accessing it)
> ... but that in doing the upgrade, you lost that emulation.

Possibly of relevance here, although I'm not certain of this: Somewhere
in the 2.4 kernel timeframe, a recommendation was made that the nodename
for SCSI CD's change from /dev/scdN to /dev/srN if my memory is correct,
and I think Red Hat made the change between 7.1 and 7.2 so it could
simply be that the nodename /dev/scd0 should now be /dev/sr0 instead.

> Since I use neither Red Hat nor kudzu, I can't tell you in detail
> how to restore ide-scsi emulation, but the outline is --
>
>  1. Pass a boottime argument to the kernel (in lilo.conf) of this
>     form: append="hdd=ide-scsi"
>
>  2. Enable ide-scsi emulation in the kernel. One way is by compiling
>     and loading this set of modules:
>
>	  # the stuff to enable ide-scsi emulation for the CD-ROM
>	  scsi_mod
>	  sr_mod scd0
>	  sg
>	  ide-scsi
>
>  3. For reading, the CD drive should then look like it is a scsi 
>     device, at /dev/scd0
>
>  4. For writing, it is *probably* at lun 0,0,0 -- you can check 
>     this with "cdrecord --scanbus".

That is a reasonable general outline for Red Hat as well. Yes, I use Red
Hat, but right at this moment, I don't have access to a 7.3 system to
check the details on.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
