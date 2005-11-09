From: "Conway S. Smith" <beolach@comcast.net>
Subject: Re: Can a normal user format, mount the card
Date: Wed, 09 Nov 2005 06:46:59 -0700
Message-ID: <4371FDD3.2020303@comcast.net>
References: <3AEC1E10243A314391FE9C01CD65429B04F016@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3AEC1E10243A314391FE9C01CD65429B04F016@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Mukund JB. wrote:
> Dear users,
> 
> I am just here to confirm whether a normal user can mount and format a device.
> As for as I rememder a normal user is not allowed to mount. I tried it & I am not able to do it.
> 
> Then fhow can a normal user access a device. I am seeing that he is not even able to place files into a mounted device.
> 
> Regards,
> Mukund Jampala

For mounting, just add either user or users to the options column in
/etc/fstab on the line for the device.  User allows any user to mount
the device if it isn't already mounted, and once it's mounted only that
user (or root, of course) can unmount it.  Users allows any user to
mount or unmount the device, even if a different user mounted it.

For example, if your CD-ROM drive was /dev/hdc, and you wanted anyone to
mount it, but only the user that mounted it can unmount it, you would
have this line in /etc/fstab:
/dev/hdc	/mnt/cdrom	iso9660	defaults,noauto,user,ro	0 0

To format a device, you would probably want to be root.  I'm not
positive, but a regular user would likely be able to format a device if
they had execute permission on the mkfs utility (mke2fs, mkreiserfs,
etc.), and write permission on the device node (/dev/hd*, /dev/sd*,
etc), but giving regular users those permissions would probably not be a
good idea.

Good luck,
Conway S. Smith
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFDcf3SGL3AU+cCPDERAmGwAJ9YrVwjTX00BYEwErjK6lyjn67QTACgxvhI
5yBpG7MgwMyMkX3YfG08tcc=
=VgtG
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
