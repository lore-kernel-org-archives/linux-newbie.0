From: david mattatall <davidsmind@linuxbasics.com>
Subject: Fscked file or fscked filesystem?
Date: Tue, 14 Jan 2003 16:23:22 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301141623.23784.davidsmind@linuxbasics.com>
Reply-To: davidsmind@linuxbasics.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello all.
I use XFS and I seem to be having troubles with a certain file on my hard 
drive.

ls -ls /usr/kde/cvs/bin/kreversi
ls: /usr/kde/cvs/bin/kreversi: Unknown error 990

rm -vf /usr/kde/cvs/bin/kreversi
rm: cannot remove `/usr/kde/cvs/bin/kreversi': Unknown error 990

file /usr/kde/cvs/bin/kreversi
/usr/kde/cvs/bin/kreversi: can't stat `/usr/kde/cvs/bin/kreversi' (Unknown 
error 990).

This is the only file on my hard disk that is acting this way and I've run 
fsck.xfs on the disk and rebooted multiple times without effect.

Is this an easily fixable problem? A kernel bug? FS corruption?

help please.

PS.
Should I post this to the lkml as well?
-- 
*-_-_-_-_-_-_-_-_-_-_-_-_-_-*
AIM: StabbyMcforehead
ICQ: 73080754
Email: davidsmind@linuxbasics.com
Weblog: http://davidsmind.diaryland.com or http://livejournal.com/~davidsmind
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
