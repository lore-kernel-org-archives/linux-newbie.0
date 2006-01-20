From: "James Miller" <jamtat@mailsnare.net>
Subject: Re: SOS: restore deleted file on ext3 system; CORRECTION--it's 
    reiserfs
Date: Fri, 20 Jan 2006 16:05:35 +0000
Message-ID: <W7298030047311301137773135@mail.mailsnare.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie@vger.kernel.org

I made a mistake about the filesystem on the machine.  It's reiserfs, not ext3.  reiser 3.x, I believe.  One large partition on the machine (/dev/hda2 = 38GB; hda1 is swap).

James

>-----Original Message-----
>From: James Miller [mailto:jamtat@mailsnare.net]
>Sent: Friday, January 20, 2006 09:25 AM
>To: linux-newbie@vger.kernel.org
>Subject: SOS: restore deleted file on ext3 system
>
>I spent all day yesterday revising a chapter of a work I'm writing.  Since I've had trouble ftp'ing files to/from my ftp server, I just emailed the file to myself so I could access it from the library where I was working.  Unfortunately, I told the browser to open the file with the default application (OpenOffice) when I loaded the file from email, rather than having it save it to disk.  I failed to note that, therefore, the file I was editing was located in the /tmp directory.  I finished editing, having saved numerous times while I worked, and shut down the computer.  Today, when I started the system I realized my error and understood that, since I'm using a Debian variant (Xandros), and since Debian's habit is to delete the contents of /tmp on each reboot, the file I spent all day yesterday working on is simply gone.  The system uses the ext3 filesystem, btw.  Can anyone help me to r
 ecover this file so I don't end up having wasted a whole day?  Any suggestions will be greatly appreciated.
>
>Thanks, James
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
