From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: partition resides on first track
Date: Wed, 05 Feb 2003 09:46:42 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E40CF72.70303@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

Above is returned by fdisk (more or less; I am at a different machine 
and can't remember exactly). Presumably, this is why trying to install 
Mandrake 9.0 failed repeatedly at the bootloader stage (with no way out 
of the installation program) and eventually trashed the partition table 
(now rebuilt).
Q1: Am I right?
Q2: Can I correct the situation? (With parted, e.g.)
Q3: Otherwise, how else can I install Mandrake without losing the quaint 
little Win98 system my girlfriend needs for work?
The present setup is:
first hd 2.4 G, one Win 98 partition, could be resized to 1 G to make 
room for Mandrake;
second hd 600M, probably for additional Win progs or storage.
Very many TIA,
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
