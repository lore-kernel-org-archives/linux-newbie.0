From: Dan Zlotnikov <dzlotnik@perpugilliam.csclub.uwaterloo.ca>
Subject: /cdrom fails to unmount
Date: Tue, 22 Jul 2003 11:19:59 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.csclub.uwaterloo.ca>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Reply-To: dzlotnik@uwaterloo.ca
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In Deb.woody, kernel 2.4.18, I have the following problem:

mount /cdrom
"sure," the computer says, "I will."

cd /cdrom

mplayer -fs whateverthehellI'mwatching
"Okay," says the computer.

cd
"No problems," says the beast.

umount /cdrom
umount: /cdrom: device is busy
Or in other words, "*$^! you!"

No processes that I could identify suggested themselves as the visible
culprit. Rebooting works, but killing the x-session doesn't.

Help, anyone?

Dan

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
