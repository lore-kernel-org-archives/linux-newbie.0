From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: help with IDE zip drive
Date: Wed, 9 Jun 2004 00:38:22 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0406090031020.31672@ppg_penguin>
References: <Pine.LNX.4.58.0406081720550.15997@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0406081720550.15997@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tue, 8 Jun 2004, James Miller wrote:

> Well, the time has come to finally try and get the zip drive that's b=
een
> sitting idly in this computer ever since I install Debian Sid about 6
> months ago, up and running.  I've never gotten it to work so far, hav=
ing
> tried the traditional stuff that always worked before (mount /dev/hdd
> /zip, making an entry in /etc/fstab to that effect).  I worked at it =
a bit

 Zip PC disks come from the factory with a VFAT filesystem on partition
4 (e.g. hdd4).  If you used to address it as hdd, I guess you used to
use ide_floppy but no longer have that in your kernel.  With a single
partition, you might get away with trying to mount it as hdd4, or you
might not (it's years since I tried ide_floppy, and quite a long time
since I used my zip disks, but my memory is that ide_floppy appeared to
see all the data (from hdd1, in my case, because I repartitioned with
fdisk before running mke2fs).

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
