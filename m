From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: File in use Samba ( was Script as root)
Date: Tue, 1 Oct 2002 10:57:35 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c2695a$e1001f90$64fea8c0@pkrausxp>
References: <1033482227.10135.152.camel@Zebra>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033482227.10135.152.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Paul Furness' <paul.furness@vil.ite.mee.com>, linux-newbie@vger.kernel.org

I have written the script to tar up folders on my xp box. The script
works. I mount -t smbfs .... The folder I want. I then tar mnt/folder
The problem is that I get errors saying that the file changed as we read
it. Or text file busy. 
None of the files are in use. Nor are they system files of any kind. I
know for a fact that the xp system is not using them. Any ideas as to
what may be causing this?

I am smbmounting the drive rather then using smbtar due to the
limitations of smbtar.

My script tars up a folder and the dumps the output to a text file. The
script does this for about 4 different folders. It then tars the
tarballs together into one file with the "index" text files also tarred
up. It is then compresses using bzip2. The work files are deleted.

Paul

-----Original Message-----
From: Paul Furness [mailto:paul.furness@vil.ite.mee.com] 
Sent: Tuesday, October 01, 2002 10:24 AM
To: Paul Kraus
Cc: linux-newbie@vger.kernel.org
Subject: Re: Script as root


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
