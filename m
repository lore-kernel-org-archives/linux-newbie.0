From: Beolach <beolach@comcast.net>
Subject: Re: moving partion to newer drive
Date: Tue, 24 Feb 2004 21:26:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <403C2405.5020600@comcast.net>
References: <5.1.0.14.1.20040224175140.0386cc50@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040224175140.0386cc50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Ray Olszewski wrote:
| At 08:25 PM 2/24/2004 -0500, Karthik Vishwanath wrote:
|
|>Hello,
|>
|>I have a dual-boot system (with windows-98 and redhat 7.3) setup on an old
|>hard disk. I recently obtained a new hard drive and have their order
|>configured such that the old drive is /dev/hda and the new one is
|>/dev/hdb. The partitions on /dev/hda are as follows:
|>
|>/dev/hda1   *         1       960   7703608+   c  Win95 FAT32 (LBA)
|>/dev/hda2           960       963     30240   83  Linux
|>/dev/hda3           963      1365   3228120   83  Linux
|>/dev/hda4          1365      1653   2313360    5  Extended
|>/dev/hda5          1365      1397    257008+  82  Linux swap
|>/dev/hda6          1397      1653   2056288+  83  Linux
|>
|>with /dev/hda2 -> /boot, /dev/hda3 -> /, /dev/hda6 -> /home.
|>
|>The partitions on /dev/hdb are defined as:
|>
|>/dev/hdb1             1      6684  53689198+   c  Win95 FAT32 (LBA)
|>/dev/hdb2          6685      8143  11719417+  83  Linux
|>/dev/hdb3          8144      9600  11703352+  83  Linux
|>/dev/hdb4          9601      9729   1036192+  82  Linux swap
|>
|>
|>I want to: install Fedora on /dev/hdb by making /dev/hdb2 -> /, copy
|>/dev/hda6 to /dev/hdb3 (-> /home) and successfully dual-boot. I have the
|>following questions;
|>
|>1. Can I boot from the Fedora CD and get the installation going (with
|>properly defined partitions) and subsequently mounting and copying
/dev/hda6
|>to /home, without disturbing anything on /dev/hda at all?
|
|
| You should be able to. I haven't actually done a Fedora install, but
I'd be
| amazed if it couldn't handle this configuration.
|
|
|>2. Is it preferred that I preserve the /boot partition - i.e. will it help
|>if /boot remains on /dev/hda2?
|
|
| It mainly depends on what your BIOS will put up with. LILO (or do you use
| GRUB?) doesn't care where the boot partition (in effect, the Linux
kernel)
| is, as long as the BIOS can find it. The historical reason for a separate
| boot partition was the old 1024-cylinder limit for BIOS access, a limit
| long gone. I've seen some occasional BIOS problems still, though, with
| drives over 40 GB. If your system has such a problem, you'll need a boot
| partition spmewhere near the front of one of the drives.
|
|
|>3. What are the details I must watch out for in this process?
|
|
| Hard to say, aside from inane advice like "Don't do anything silly".
You've
| pretty much asked the right questions.
|
| As long as you tell Fedora to install to hdb2, it should ignore all the
| hda* partitions (except maybe for asking you if you want to specify mount
| points for them). And, as I said, you will have to wait and see if you
can
| boot a kernel located on hdb2.
|
| Remember that with this approach, you're still installing lilo (or
GRUB or
| whatever) on the MBR of hda. So you'll need either to add back in the
| multi-boot stuff that lets Windows boot, or install Fedora to boot from
| floppy, then edit your existing multiboot setup to add Fedora to it.
|
| Were I doing this, I think I'd do it the reverse way -- make the new
drive
| hda and the old one hdb. Fiddle with the partitioning as needed to get a
| working /boot partition for Linux. Probably only have one real Linux
| partition (plus a small /boot partition), just to avoid an Extended
| partition ... though the merits of that idea depend completely on what
you
| actually use this system for.
|
| Then install Windows to the new hda1, Linux to the new hda2 and hda3 ...
| and use the old drive, however you reconfigure it, as a data drive.
|
|
|>4. Finally - if all goes well, can I delete partitions /dev/hda(2)3-6 and
|>make /dev/hda available as one single partition, without hosing windows?
|
|
| Not with Linux tools (though fdisk can easily delete hda2-6 for you).
| You'll need help from a Windows list to modify the size of the actual
| Windows partition.
|
|

Ray covered everything really well, just a couple things I wanted to
add.  First, like Ray I would also suggest switching the harddrives so
the new one was hda & the old one was  hdb.  The Linux Doc Project has a
good mini-howto on this (although they describe completely swapping out
the old hard drive, but it would be easy just to reformat it for a data
drive like Ray mentioned).  The Hard Disk Upgrade mini-Howto is at:
<http://www.tldp.org/HOWTO/Hard-Disk-Upgrade/index.html>

Secondly, on your last question:
|>4. Finally - if all goes well, can I delete partitions /dev/hda(2)3-6
|>and make /dev/hda available as one single partition, without hosing
|>windows?
|
| Not with Linux tools (though fdisk can easily delete hda2-6 for you).
| You'll need help from a Windows list to modify the size of the actual
| Windows partition.

I have never used it myself, but I believe GNU parted may do what you
are describing.  GNU parted is a program for advanced manipulation of
disk partitions.  If it isn't already installed on your system, you can
get it at: <http://www.gnu.org/software/parted/parted.html>.  Of course,
while it hopefully wouldn't hose windows, there is no guarantee.

Just my 2 cents,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFAPCQEGL3AU+cCPDERAoZcAKDMIfTr/ZUuuyCL7EllChSQpyNhVACfafQV
E5D8onnw/W1zDR66OkdqLBc=
=KcDe
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
