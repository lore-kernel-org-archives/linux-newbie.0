From: James Miller <jamtat@mailandnews.com>
Subject: RE: Lycoris
Date: Fri, 28 Feb 2003 12:53:38 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0302281245130.9924-100000@vector>
References: <3E5FA9B0.3030209@arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E5FA9B0.3030209@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

> Andrew Langdon-Davies wrote:

> Can anyone tell me if the Lycoris installation program will let me
> choose where to install ? I need to respect an existing Windows
> installation.

As I'm recalling, if you choose the "advanced" option, you get a choice of
partitions on which to install. I seem to recall a fundamental unclarity
in this part of the process: I was trying to add a partition to be visible
or bootable, and it ended up getting flagged as a target partition and got
formatted instead. Probably best to only let the install routine be
concerned with the target (install) partition(s), and add any other partitions
you want to be visible or bootable later. Lycoris uses GRUB for a bootloader,
btw. Anyway, this option (of not just letting it take over the whole disk) is
not for the faint of heart.

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
