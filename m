From: James Miller <jamtat@mailsnare.net>
Subject: Re: error message interpretation help?
Date: Mon, 2 Feb 2004 19:31:09 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402021914540.1541@debian-emach>
References: <Pine.LNX.4.58.0402021543430.1541@debian-emach>
 <Pine.LNX.4.58.0402022333300.22014@ppg_penguin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0402022333300.22014@ppg_penguin>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 2 Feb 2004, Ken Moffat wrote:

>  As to naming the cdrom, /dev/cdrom will usually be a symlink to another
> device (e.g. hdc or perhaps scd0 if your distro uses scsi emulation for
> read and write).  If you are using the ide driver, /dev/hdc or whichever
> won't cause you problems.  Distros usually get these things right, but
> maybe you compiled your own kernel and used different options.  Since
> /dev/cdrom no longer works for you, where is it pointing (or,
> exceptionally, which are the device major / minor numbers, and is it
> char or block - I'm only asking so you can understand why it no longer
> works :) ?

Thanks for your response, Ken, which only marginally makes sense to me
(not a criticism of you, but a statement of my poor grasp of things).
I've made a mental note of "devfs" and will try to be aware of how it may
apply to this matter.  This is *not* a hand-compiled kernel (not by my
hand, anyway), but the latest 2.4.x kernel from Debian (apt-get install
kernel-image-2.4-686).  /dev/cdrom is a symlink pointing at /dev/cdrom0.
/dev/cdrom0 is, in turn, a symlink pointing at /dev/hdb (which is the
device I manually entered into fstab to get it mountable).  This is
totally baffling to me: a symlink pointing at a symlink?  The logic
escapes me.  What am I missing?  Perhaps more importantly, what is the
*right* way to work with the cdrom on this machine?  I should make the
disclaimer that the original fstab entry may have been /dev/cdrom0, rather
than /dev/cdrom - I just don't remember for sure.  I still can't see why a
symlink should be needed for a CD drive, much less a symlink to a symlink:
is this for the benefit of the user, the OS creator/compiler, the
computer itself?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
