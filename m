From: Haines Brown <brownh@hartford-hwp.com>
Subject: tar confined to partitions
Date: Mon, 2 Sep 2002 11:17:41 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209021517.g82FHf908778@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I have a tar script to back up all directories on my HD (/*) to a
mirror disk. 

But a puzzler. The script sees all directories mounted on / and backs
up their content, but fails to back up the contents of directories
that are presumably mounted under /, but are not in the same partition
as /.

For example, if I specify /* as source, the /bin directory contents
are backed up because /bin is in the same partition as /. However,
/home has its own partition, and so while tar script creates a /home
directory,  it is empty. I have to back up /home explicitly.

If I run # mount, I see:

...
/dev/sda6 on / type ext3 (rw)
...
/dev/sda12 on /home type ext3 (rw)

Only the contents of sda6 are getting backed up.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
