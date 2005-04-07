From: Jim Nelson <james4765@verizon.net>
Subject: Re: Linux Backup
Date: Wed, 06 Apr 2005 22:18:30 -0400
Message-ID: <42549876.7040709@verizon.net>
References: <d31t0b$a1v$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <d31t0b$a1v$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: smertens@mho.com
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

smertz wrote:
> I have spent a great deal of time on simple things in Linux as I am new
> over the last week (No better way to learn)  But I don't want to
> re-learn in case the proverbial Hard Drive dies, so what is a good way
> to back up my system? On my 2 Windows XP machines I use Ghost 9.  Is
> there similar thing to copy a Linux drive?
> 
> Or can I simply do something like an XCOPY from one drive to a second
> one as a backup?
> 
> I am using Red Hat Enterprise Linux ES release 4 (Nahant)
> on a home Workgroup as a File and print server - If I ever get Samba set
> up correctly. Any suggestions appriciated.
> 
> Thanks
> 

$ man rsync

I use rsync over NFS to back up my file server to another machine - there are a
lot of options available.

On the same machine, you can use dd to copy partitions, but it is tremendously
slow.  It is the only way to get a full disk image, though - it's the best thing
I've found for backing up Windows and BIOS boot floppies.

Jim

- --
GPG key available
gpg --keyserver pgp.mit.edu --recv-keys 359DBF73

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.4 (GNU/Linux)
Comment: Using GnuPG with Fedora - http://enigmail.mozdev.org

iD8DBQFCVJh2evfmjTWdv3MRAlFPAKCHxxwVxbbUqtUhg6myRIE5mBjdNgCfXkIs
KSkDzRNsCsSnhfmngO9IJjc=
=7d4R
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
