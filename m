From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: error message interpretation help?
Date: Mon, 2 Feb 2004 23:47:41 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402022333300.22014@ppg_penguin>
References: <Pine.LNX.4.58.0402021543430.1541@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0402021543430.1541@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 2 Feb 2004, James Miller wrote:

> I recently made some kernel changes and was fiddling with lilo.conf on a
> Debian Sid system.  Of course I had to run "lilo" to get the changes to
> take effect.  When I did, I got an error message that I'm not quite sure
> how to interpret.  I'd like to ask some input here on what it means and on
> what I need to do to correct the problem.  Here's what I got when I ran
> the command "lilo" from an xterm as root:
>
> --------------------------------------------------------
> [03:43:15]root@debian-sid root$ lilo
> Warning: '/proc/partitions' does not match '/dev' directory structure.
>     Name change: '/dev/ide/host0/bus1/target0/lun0/disc' -> '/dev/hdc'
> Warning: /dev/hda is not on the first disk
> Added Linux-2.4.24 *
> Added Linux-2.2.20
> ---------------------------------------------------------
>

 Looks like a warning, not an error.  Lilo seems to have completed
successfully.  <obligatory disclaimer> I don't use devfs, YMMV :) </>

>   Can someone
> please help clarify for me 1) whether the /proc/partitions and /dev
> directory structure inconsistency could be related to renaming the fstab
> entry for the CD drive and 2) why CD drives get device names on some
> (newer?) systems like /dev/cdrom instead of /dev/hdx?
>
> Thanks, James

 I imagine that fstab will never be taken into account when
/proc/partitions and /dev are compared.  I would not be surprised if
it's purely an artefact of using devfs, or perhaps you are supposed to
_not_ use /dev/hdc with devfs.

 As to naming the cdrom, /dev/cdrom will usually be a symlink to another
device (e.g. hdc or perhaps scd0 if your distro uses scsi emulation for
read and write).  If you are using the ide driver, /dev/hdc or whichever
won't cause you problems.  Distros usually get these things right, but
maybe you compiled your own kernel and used different options.  Since
/dev/cdrom no longer works for you, where is it pointing (or,
exceptionally, which are the device major / minor numbers, and is it
char or block - I'm only asking so you can understand why it no longer
works :) ?

Ken
-- 
Brighton tops UK Jedi league
http://www.theregister.co.uk/content/28/35186.html

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
