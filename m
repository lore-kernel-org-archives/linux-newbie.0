From: Hal MacArgle <haltec@kvinet.com>
Subject: Lexar Jump Drive & Linux??
Date: Fri, 24 Mar 2006 16:38:42 -0500
Message-ID: <20060324213842.GA1272@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Greetings: One year ago I bought a Lexar 256mB Jump Drive; put an
ext2 FS on it and used it to transport small files from one Linux
machine to another, all running 2.4.XX kernels, and mounting the
drive as /dev/sda1, per dmesg...

All of a sudden I couldn't write to it unless the files were less
than 30mB total size.. I figured the drive must be bad; still in
warranty according to Lexar, so I contacted their support people..

First off they say I must reformat the drive using Windows and
included instructions for doing this with Win98SE or XP... SE didn't
even see the drive so I fetched the newest driver from their site and
never did get it to work...

Then I went to an XP machine and was able to format the drive as per
their instructions so it now seems to work fine as long as it's
formatted FAT32  (VFAT)...

Am I presuming I have to _not_ use a Linux FS with this or other jump
or flash drives?? (I do have a UL641 64mB drive that's fine ext2, so
far) I've been telling some that the Lexar 256 drive works with
Linux.. I'll have to retract that unless I can figure out what
happened, eh?? Any comments. TIA.. (Of course the drive 'specs' don't
list Linux, as usual.) :^(

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
