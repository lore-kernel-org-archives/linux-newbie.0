From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Sharing drives.
Date: Thu, 03 Oct 2002 17:33:18 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D9CB79E.54505E03@gelm.net>
References: <000501c269e8$b8ca73c0$af33f7c2@gcb> <3D9AE71D.D509316F@gelm.net> <3D9C4FAB.8CAD330F@sympatico.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: LL Phillips <lilo.phillips@sympatico.ca>
Cc: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

LL Phillips wrote:
> 
> Regarding the statement "Each would need a separate partition, AFAIK"
> I've recently considered dual booting my W98SE hard drive which is 40G
> total size with only 20G used made up of C: primary partition and
> D,E,F,G,H all logical drives in one extended partition (each around
> 3-6G each)
> 
> When I put in my W98SE boot disk to make a second PRIMARY partition I
> was not allowed because fdisk told me there was already a primary
> partition existing.

 Probably a few reasons:
- the disk has no room for another partition, PRIMARY or otherwise.
- perhaps, once an 'extended' partition is created,
  no further 'primary' partitions can be created.
- Perhaps [MS|PC]DOS cannot create a second primary partition.
- perhaps you should use a 'linux' fdisk to create partitions
  to install linux. ;-)
/dev/hda1 20G /WIN98SE
/dev/hda2 20G extended
/dev/hda3  3G /Debian '/'
/dev/hda6  3G /Peanut '/'
/dev/hda7  3G /share7 ;shared filesystem
/dev/hda8  3G /share8 ;whatever filesystem that both Debian and Peanut
                      ;can r/w.
...
Install either of the linux distributions last as Windows(r)
 overwrites the MBR.
Linux 'lilo' can boot with a menu to choose which o/s to boot
 and a default o/s to boot after # seconds.

> If I wanted to have W98SE, Debian and Peanut Linux all on the same
> drive how would I go about that. Was I wrong to put in the W98SE boot
> / rescue disk.  

 I recommend using linux fdisk to create/modify partitions to install
the linux o/s into.  Also, create/modify them to be a linux type;
'second extended' and 'swap' are the only filesystems the I have used
(Type 83 linux native & type 82 linux swap).

 Yes, you can install linux into DOS type partitions, however I
 do not recommend it.

 Yes, linux can read/write DOS/WIN (2.x, 3.x,9x, ME filesystems
 (but can only read WIN-NT & WIN-2000 filesystems).

 Lindows (I'm an insider
> /pre-general-release-by-subscription user) will install beside windows
> if one has space on the drive, (it is called a friendly install).  I
> felt it was too risky to proceed because I didn't want to damage my
> W98SE main everyday machine.  Asus A7V motherboard.

 You might damage your W98SE files, but I doubt that you will damage
 your 'machine'. :-|

> Would you advise using a Linux distribution root / boot diskette
> combination to set up my hard drive.  (I've ruined about 8 laptop
> drives in the past trying so am nervous).

 If you have a BIOS that can boot from a CD-ROM drive,
I recommend installing linux from a bootable CD-ROM disk.  ;-)

 I'm hoping you mean that after you created linux filesystems
on a hard drive, Windows could not recognize the drive. :-|

 I'd like to hear more about how a drive was damaged by a linux
boot/root diskette.  Sounds like a 'Slackware' install to me.
If you 'linux fdisk' a hard drive and place only linux type partitions
on it, it will not be recognized by DOS-Windows*.  If you use
linux fdisk to create DOS/WIN partitions, DOS/WIN will recognize it
(I think it will recognize the first partition and any sequential
partitions that are DOS/WIN, but no further partitions after the first
non-DOS/WIN partition).
;-)

> Lorraine
> 
> chuck gelm wrote:
> >
> > Hi, Geoff:
> >
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
