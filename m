From: Christopher Swope <swopecr@yahoo.com>
Subject: Strange Boot behavior
Date: Thu, 21 Aug 2003 18:09:17 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030822010917.50037.qmail@web13801.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello all,

I am currently having trouble getting my computer to boot.  I
recently decided to install a larger, faster, hard drive.  Since this
hard drive was larger and faster, I decided that I wanted to make it
my master drive, and make my old drive my slave.  I took the old hard
drive out, and installed Red Hat Linux 8.0.  I then reconnected the
old drive, transferred files, etc.

The problem is that when the new drive is connected, I never get the
grub display screen.  The BIOS executes appropriately, and then the
computer just sits there, like it is waiting for something.  When the
old drive is not connected, the computer boots fine, however.  Even
if the old drive is turned off in the BIOS Setup, if it is connected,
I have this problem.

I did make a boot diskette, and I can boot from that.

I have tried several things to fix the problem, including
reinstalling grub, making the old /boot partition no longer bootable,
and even changing the label of the old /boot partition.  I even tried
to delete the old /boot partition altogether, but nothing has solved
the problem yet.

I am stumped as to what could be the problem.  It might very well be
hardware/BIOS related, but I don't think it is.

Does anyone have any ideas on what the problem could be and/or how I
can fix it.

Thanks much,
Christopher Swope
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
