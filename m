From: Mark Johnson <rmjohnson@adelphia.net>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Tue, 21 May 2002 23:35:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CEB3C44.8060403@adelphia.net>
References: <3CE94665.8090104@adelphia.net> <5.1.0.14.1.20020521124101.020fcec0@celine> <5.1.0.14.1.20020521170358.020eb310@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org



Ray Olszewski wrote:

> Mark, let's keep this discussion on the list, please. I've added it 
> back here in a Cc:.

sorry about that, I noticed the other previous ones went straight to you 
also.  I didn't catch it before, but I got this one:).  Usually when I 
reply it automaticly goes back into the group instead of to the sender.

>
> If you run the command "ls -l /dev/cdrom", you will (almost certainly) 
> find that it is not itself a pseudofile entry. Instead, it points to 
> something else, probably /dev/hdc . That's what a symlink is, sort of 
> (read "man ln" for the details).
>
> Once you moved the drive to the IDE-SCSI driver, it was no longer 
> accessible through /dev/hdc, so the /dev/cdrom symlink no longer 
> works. You now have to access it at ... well, I don't really know, but 
> /dev/scd1 is a good bet.
>
> The mount points you are using are set in /etc/fstab . In there is 
> (probably) a line that tells mount to mount /dev/hdc on mount point 
> /mnt/cdrom, and to mount whatever the pseudoSCSI-CD-R/W device is 
> (maybe /dev/scd0) on /mnt/cdrom1 . Or the mount points may use the 
> symlinks /dev/cdrom and /dev/dvd instead.
>
> In any case, once you know where (in /dev) the device pesudofile 
> entries are, you can edit /etc/fstab so the mount points connect to 
> the right devices (or to suitable symlinks).

you're right (except fstab uses /dev/cdrom as hdc and /dev/cdrom1 is 
hdd), and that is why the dvd stopped working.  When I installed the 
cd-rw it linked to cdrom, which is the dvd.  the cd-rw is cdrom1.  now 
that I have dvd as ide-scsi it is now cdrom1.  will it mess up anything 
if I just rename crom1 to cdrom and vice-versa so drive 0 is cdrom amd 
drive 1 is cdrom1. it is confusing having drive 0(cdrom1) as 1.  as for 
it not working after the changes, it was the burner programs wanting to 
have the cd ejected, it resets the cd somehow, mad a bad cd curn as I 
was burning too fast for the prgram and got data underflow.  I slowed 
her down and everything is running pretty smoothly.  I've done about 5 
tests so far with no glitches yet (fingers crossed).

>
> As before, this includes a lot of guessing, based on teh way my Debian 
> systems set themselves up out of the box. YMMV as to the dtails, but 
> this should be enough to get you started in teh right direction.

good guessing.  You were right on 100% both times with a couple minor 
(obvious) changes on my end. The only problems I really had were a few 
program glitches and me being in too big a hurry and missing a command 
or two.

Again, thanks for the help.
-=Mark=-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
