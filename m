From: Beolach <beolach@comcast.net>
Subject: Re: mounting vfat partitions
Date: Mon, 26 Apr 2004 20:48:37 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <408DCA05.60705@comcast.net>
References: <Pine.LNX.4.44.0404261824550.12785-100000@legolas.personal.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0404261824550.12785-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I would recommend something like:

/dev/hdb1	/dosd	vfat	defaults,umask=0,utf8,uid=1000,gid=100
/dev/hda1	/dosc	vfat	defaults,umask=0,utf8,uid=1000,gid=100

Most importantly, the umask=0 option tells mount to grant all
permissions for all users.  Less important, the uid & gid specify the
user & group ids for all files on the vfat filesystem.  uid=1000 should
usually be the first regular user, and gid=100 should be group users.
If you want regular (non-root) users to be able to mount & umount the
filesystem, you should add user or users to the options in fstab.
'users' will allow any user to mount or umount the filesystem, while
'user' will allow any user to mount, and only that user (or root, of
course) to umount.  See man 8 mount for more options.

HTH,
Conway S. Smith

Karthik Vishwanath wrote:
> changing the /etc/fstab entries to the ones you listed below, Amin,
mounts
> the devices at boot but does not allow a user to read them.
>
> The problem persists.
>
> -K
>
> On Mon, 26 Apr 2004, at 9:26am, Amin wrote:
>
>
>>Karthik Vishwanath wrote:
>>
>>
>>>/dev/hdb1	/dosd	vfat	defaults
>>>/dev/hda1	/dosc	vfat	defaults
>>>
>>>This mounts the partitions correctly. However, I am able to access these
>>>mount points only as root, and not as a user.  I would prefer that these
>>>vfat partitions be writable by root alone, but be readble for all
users on
>>>the machine. How can I fix that?
>>>
>>>Thanks,
>>>
>>>-K
>>
>>/dev/hdb1	/dosd	vfat	defaults,owner,user
>>/dev/hda1	/dosc	vfat	defaults,owner,user
>>
>>HTH
>>
>>Yawar
>>
>
>

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)

iD8DBQFAjcoDGL3AU+cCPDERAnTYAJ9zd3u/by3H71UCNcDGP95z07bCuwCfa79g
Ao5XobzNXsmd732sfwl467o=
=mJMV
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
