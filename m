From: ichi@ihug.co.nz
Subject: Re: tar for "full" floppy backup?
Date: Sun, 08 Dec 2002 08:36:23 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF30487.1829715E@ihug.co.nz>
References: <200212070919.CAA12532@cu.imt.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

Jerry James Haumberger wrote:
> 
> The question remains:  How can I back up -- with tar or 
> any other Slackware 3.5 program -- my 9 MBs of files from 
> the BasicLinux console with multiple floppies?  And in 
> compressed format?

It would be possible to create a compressed archive and 
then split it into floppy-sized chunks.  Like this:
-------------------------------------------
tar -zcvf - /usr | split - -C 1440k floppy.
-------------------------------------------
This will give you floppy.aa, floppy.ab, floppy.ac, etc.
You could write a script around that to copy the files
(for i in floppy.*) to floppies (prompt, mount, copy, 
umount).

To reverse the process, use cat instead of split.

Cheers,
Steven


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
