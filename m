From: Staci <spiritlover666@yahoo.com>
Subject: File-system Ext2 or Ext3??
Date: Sat, 11 May 2002 13:46:22 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020511204622.23285.qmail@web12806.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi!

I have some confusion.

I set up journals on my ext2 FSes (there's two, / and
/home) with tune2fs -j, to make them ext3.  But I
still get forced fscks at startup, and they still find
lots of problems I thought would be eliminated with
ext3.
So I look at cfdisk for /dev/hdb, and it says those
partitions are ext2.  Is my cfdisk too old?  Did I do
something wrong?  Both my mtab and fstab have them
labeled (correctly?) as ext3.  

Anyone know what's going on here?

Thanks...
sl

=====
**************************
In cyberspace nobody can hear you scream.

__________________________________________________
Do You Yahoo!?
LAUNCH - Your Yahoo! Music Experience
http://launch.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
