From: "Jamie Risk" <jamie_risk@yahoo.ca>
Subject: copying file systems ...
Date: Wed, 29 Jan 2003 12:35:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <b19395$6c9$2@main.gmane.org>
Reply-To: "Jamie Risk" <jamie_risk@yahoo.ca>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

How do I copy an entire file system, symlinks and all, to a temporarily
mounted partition? (what are the pertinent 'cp' switches?)

I've got an extra harddrive (&PC) and I want to mirror my original system
with as little work as possible.

I put the third harddrive in my system, and mounted it at "/mnt/new". Thus,
the mounts are:

/dev/hda2   /         ext2
/dev/hda1   /boot     ext2
/dev/hda3   /usr      ext3
/dev/hda4   /home     ext3
/dev/hdb1   /usr/doc  ext2
/dev/hdb2   /usr/src  ext2
/dev/hdc1   /mnt/new  ext2

Can I simply use the following command?

[bash-2.05]# cp -r / /mnt/new

- Jamie
p.s. (I'd then test the output using 'chroot')





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
