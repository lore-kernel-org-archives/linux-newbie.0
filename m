From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Script as root
Date: 01 Oct 2002 15:23:47 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1033482227.10135.152.camel@Zebra>
References: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

There are a couple of ways, depending on how you are mounting the drive.

Dirty way:

If you are using NFS and are _not_ using an auto mounter of some kind
(amd, autofs), change the ownership of the script file to root, then
setUID on it. like this:

chown root SCRIPT
chmod +s SCRIPT

Note: Using SUID is not particularly secure. It's usually ok in a
trusted environment, but if a hacker could get anywhere near your linux
machine DON'T DO IT THIS WAY. In that case, look at using amd or autofs.

Cleaner way:

Presumably you are using SAMBA to mount the drive from your XP box. In
which case, you don't need to be root, provided that the mount point is
owned by the user. For example, as user paulk, you could create a
directory to use for the mount (mkdir ~/windows) and then you should be
able to mount the samba share as the user with:

smbmnt //machine/sharename ~/windows -o username=XPUSER,password=XPPASS

and later on unmount it with:

smbumount ~/windows

However, for this to work, smbmnt and smbumount must be suid. Assuming
you have a standard setup, you can do that like this (as root):

chmod +s /usr/bin/smbmnt /usr/bin/smbumount

Note: This is fairly safe to do; smbmnt and smbumount are designed to be
run this way.


Paul.


On Tue, 2002-10-01 at 14:55, Paul Kraus wrote:
> I have a backup script that mounts a drive on my xp workstations. Is
> there a way I can set this script to run as root so that I do not have
> to su every time I want to run it?
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
