From: Jerry James Haumberger <jerryjh@imt.net>
Subject: tar for "full" floppy backup?
Date: Sat, 7 Dec 2002 09:24:20 +0000 (UTC)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212070919.CAA12532@cu.imt.net>
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello everyone --

Thank you for offering me various suggestions on how to possibly
get tar to make a backup archive on multiple floppies.  Sorry to
say, none of the suggestions worked.

The only result was that tar would make an archive in whatever
directory I happened to be in when creating the archive -- and
it would ignore the /dev/fd0 device.

When I used the "M" option, nothing occurred.  When I tried
adding the "z" option, I was told that multiple compressed archives
were not possible.

When I try to use the Slackware manual command (SAMS), it messes
up the floppy -- which has to be reformatted and so on.

The question remains:  How can I back up -- with tar or any other
Slackware 3.5 program -- my 9 MBs of files from the BasicLinux
console with multiple floppies?  And in compressed format?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
