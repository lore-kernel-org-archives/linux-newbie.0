From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: mounting vfat partitions
Date: Sun, 25 Apr 2004 18:31:35 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0404251822380.11721-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

The layout of partitions on my system here looks like the following:

/dev/hda1 -> vfat
/dev/hdb1 -> vfat
/dev/hdb2 -> ext2
/dev/hdb3 -> ext2
/dev/hdb4 -> swap

/dev/hdb2 corresponds to /, and /dev/hdb3 to /home. I want to be able to 
mount /dev/hda1 and /dev/hdb1 as /dosc and /dosd, respectively and have 
added the following lines to /etc/fstab:
/dev/hdb1	/dosd	vfat	defaults
/dev/hda1	/dosc	vfat	defaults

This mounts the partitions correctly. However, I am able to access these
mount points only as root, and not as a user.  I would prefer that these
vfat partitions be writable by root alone, but be readble for all users on
the machine. How can I fix that?

Thanks,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
