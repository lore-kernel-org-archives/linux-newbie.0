From: ichi@ihug.co.nz
Subject: Re: tar for "full" floppy backup?
Date: Mon, 09 Dec 2002 08:10:17 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF44FE9.69FB5E4D@ihug.co.nz>
References: <200212081837.LAA15273@cu.imt.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

Jerry James Haumberger wrote:
> 
> As it stands, it's possible to backup to multiple floppy 
> disks with tar, but these cannot be compressed during the 
> archival process.  

Why not use tar twice:  first with -zcf to make a compressed
archive and then with --multi-volume to write the archive
to floppy.  Of course to retrieve it, you will also have
to use tar twice:  first with --multi-volume to reconstruct
the archive and then with -cvf to unpack it.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
