From: whitnl73@juno.com
Subject: Re: copying file systems ...
Date: Thu, 30 Jan 2003 08:58:11 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030130.213331.134688640.0.whitnl73@juno.com>
References: <b19395$6c9$2@main.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="-1463810562-614542189-1043935091=:7266"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b19395$6c9$2@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
To: jamie_risk@yahoo.ca
Cc: linux-newbie@vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
  Send mail to mime@docserver.cac.washington.edu for more info.

---1463810562-614542189-1043935091=:7266
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 29 Jan 2003, Jamie Risk wrote:

> How do I copy an entire file system, symlinks and all, to a temporarily
> mounted partition? (what are the pertinent 'cp' switches?)
>
> I've got an extra harddrive (&PC) and I want to mirror my original system
> with as little work as possible.
>
> I put the third harddrive in my system, and mounted it at "/mnt/new". Thus,
> the mounts are:
>
> /dev/hda2   /         ext2
> /dev/hda1   /boot     ext2
> /dev/hda3   /usr      ext3
> /dev/hda4   /home     ext3
> /dev/hdb1   /usr/doc  ext2
> /dev/hdb2   /usr/src  ext2
> /dev/hdc1   /mnt/new  ext2
>
> Can I simply use the following command?
>
> [bash-2.05]# cp -r / /mnt/new
>
> - Jamie
> p.s. (I'd then test the output using 'chroot')
>
I use this little thing I call tartar.  Note that it will copy all of a
partition if you ask it, but won't copy all of a multi-partition VFS.

mkdir /mnt/new/boot
tartar /boot /mnt/new/boot

and so on.

Lawson

---oops---

---1463810562-614542189-1043935091=:7266
Content-Type: TEXT/PLAIN; charset=US-ASCII; name=tartar
Content-Transfer-Encoding: BASE64
Content-ID: <Pine.LNX.4.21.0301300858110.7266@giftie.alien.org>
Content-Description: 
Content-Disposition: attachment; filename=tartar

IyEvYmluL2Jhc2gNCiMjY29weSBhIGRpcmVjdG9yeSBvciBwYXJ0aXRpb24N
CnRhciAtQyAiJDEiIC1jT2wgLiB8IHRhciAtQyAiJDIiIC14cGYgLQ0K
---1463810562-614542189-1043935091=:7266--


________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
