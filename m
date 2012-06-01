From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: grub/boot problems
Date: Fri, 1 Jun 2012 13:27:12 -0400 (EDT)
Message-ID: <alpine.DEB.2.00.1206011316350.17823@localhost>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; format="flowed"; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie List <linux-newbie@vger.kernel.org>

Hey All,

A re-installation of Windows 7 on my dual boot machine blew away grub. I 
booted with the Ubuntu rescue disk (12.04) into a terminal where I tried:

sudo grub-install /dev/sda

All I get after that is a grub> prompt. How can I boot into one of the 
existing bootable partitions from here?

My partitions are:

/dev/sda1 -> HPFS/NTFS
/dev/sda2 -> Linux

All help will be appreciated!


Thanks,

-K

--
A physicist is an atom's way of knowing about atoms.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
