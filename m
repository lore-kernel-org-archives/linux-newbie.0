From: Ray Olszewski <ray@comarre.com>
Subject: Re: Big dummy lost SU password...
Date: Fri, 11 Jul 2003 08:52:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030711084149.02076e78@celine>
References: <bemkju$ou$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bemkju$ou$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Jamie Risk <risk@advancedbioelectric.com>, linux-newbie@vger.kernel.org

At 11:28 AM 7/11/2003 -0400, Jamie Risk wrote:
>Due in parts to brain fog and the remarkable stability of Linux, I've not
>had to adminster my Linux box for over 8 months.  Because of Windows Admin
>tinkering, my samba server has stopped working and I need to modify it's
>configuration.
>
>Is there a way I can mount mylinux box (say from a bootable ISO image I'd
>make) to reset the root user password and not goof up the other accounts
>that I've been so happily been using?
>
>I'm hoping that combinations of commands like chroot and such will allow me
>to avoid rebuilding my system.
>
>- Jamie (if I rember correctly)

I hope I am not misunderstanding your question.

The easiest way to fix this problem, with a machine you have physical 
access to and can reboot, is to reboot it (itself a bit of a problem if you 
do not know the root password, but possibly the CTRL-ALT-DEL method will 
work ... this depends *entirely* on specifics of your install, though) and 
use any suitable rescue disk (tomsrtbt, your distro's rescue floppy, most 
any bootable iso image) that you find convenient. (What is "suitable" 
depends on details you haven't told us, like whether the hard disk with the 
root (/) partition is IDE or SCSI and whether the system even has a floppy 
drive.)

Then mount the "real" root (/) partition at some handy location (like /mnt) 
on the "rescue"  root partition and use vi (or any suitable text editor) to 
edit /mnt/etc/passwd and/or /mnt/etc/shadow to remove the old root password.

Then reboot the "real" version of Linux (ideally without network access, 
since it is momentarily VERY insecure), become root (no password required, 
if you did the prior part right), and set a new root password the usual way.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
