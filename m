From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: moving partion to newer drive
Date: Tue, 24 Feb 2004 20:25:02 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0402241946550.29525-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I have a dual-boot system (with windows-98 and redhat 7.3) setup on an old
hard disk. I recently obtained a new hard drive and have their order
configured such that the old drive is /dev/hda and the new one is
/dev/hdb. The partitions on /dev/hda are as follows:

/dev/hda1   *         1       960   7703608+   c  Win95 FAT32 (LBA)
/dev/hda2           960       963     30240   83  Linux
/dev/hda3           963      1365   3228120   83  Linux
/dev/hda4          1365      1653   2313360    5  Extended
/dev/hda5          1365      1397    257008+  82  Linux swap
/dev/hda6          1397      1653   2056288+  83  Linux

with /dev/hda2 -> /boot, /dev/hda3 -> /, /dev/hda6 -> /home. 

The partitions on /dev/hdb are defined as:

/dev/hdb1             1      6684  53689198+   c  Win95 FAT32 (LBA)
/dev/hdb2          6685      8143  11719417+  83  Linux
/dev/hdb3          8144      9600  11703352+  83  Linux
/dev/hdb4          9601      9729   1036192+  82  Linux swap


I want to: install Fedora on /dev/hdb by making /dev/hdb2 -> /, copy
/dev/hda6 to /dev/hdb3 (-> /home) and successfully dual-boot. I have the 
following questions;

1. Can I boot from the Fedora CD and get the installation going (with
properly defined partitions) and subsequently mounting and copying /dev/hda6
to /home, without disturbing anything on /dev/hda at all?
	
2. Is it preferred that I preserve the /boot partition - i.e. will it help
if /boot remains on /dev/hda2? 

3. What are the details I must watch out for in this process?

4. Finally - if all goes well, can I delete partitions /dev/hda(2)3-6 and
make /dev/hda available as one single partition, without hosing windows?

Thanks in advance,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
