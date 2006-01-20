From: "James Miller" <jamtat@mailsnare.net>
Subject: SOS: restore deleted file on ext3 system
Date: Fri, 20 Jan 2006 15:25:22 +0000
Message-ID: <W7012113546167841137770722@mail.mailsnare.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I spent all day yesterday revising a chapter of a work I'm writing.  Since I've had trouble ftp'ing files to/from my ftp server, I just emailed the file to myself so I could access it from the library where I was working.  Unfortunately, I told the browser to open the file with the default application (OpenOffice) when I loaded the file from email, rather than having it save it to disk.  I failed to note that, therefore, the file I was editing was located in the /tmp directory.  I finished editing, having saved numerous times while I worked, and shut down the computer.  Today, when I started the system I realized my error and understood that, since I'm using a Debian variant (Xandros), and since Debian's habit is to delete the contents of /tmp on each reboot, the file I spent all day yesterday working on is simply gone.  The system uses the ext3 filesystem, btw.  Can anyone help me to re
 cover this file so I don't end up having wasted a whole day?  Any suggestions will be greatly appreciated.

Thanks, James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
