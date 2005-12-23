From: Andrew <ald2@arrakis.es>
Subject: kernel update fiasco (depmod)
Date: Fri, 23 Dec 2005 10:12:01 +0100
Message-ID: <43ABBF61.5080708@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Good morning,

I have just installed Slackware-10.2 with kernel 2.4.31 on a Pentium 100 
with 32Mb ram. All packets are from the 1st iso, which I downloaded and 
burned on cd. The problems start when I try to upgrade the kernel using 
the Slackware packet kernel-generic-2.6.13 and the corresponding 
kernel-modules. The 3 symlinks in /boot all point to the right files. 
lilo.conf is set up correctly. I've run lilo -v repeatedly. But the 
system will not boot correctly as the files in /lib/modules/2.6.13 
(modules.dep, etc.) are not being created. (However, I can boot the 
system from a floppy with the 2.4.31 kernel). If I try running depmod 
after booting with the 2.6.13 I just get the message Killed, and the 
following lines appear in var/log/messages:

Dec 23 10:47:45 fw kernel: Mem-info:
Dec 23 10:47:45 fw kernel: Free swap:            0kB
Dec 23 10:47:45 fw kernel: 8192 pages of RAM
Dec 23 10:47:45 fw kernel: 0 pages of HIGHMEM
Dec 23 10:47:45 fw kernel: 924 reserved pages
Dec 23 10:47:45 fw kernel: 16 pages shared
Dec 23 10:47:45 fw kernel: 0 pages swap cached
Dec 23 10:47:45 fw kernel: 5 pages dirty
Dec 23 10:47:45 fw kernel: 1 pages writeback
Dec 23 10:47:45 fw kernel: 6298 pages mapped
Dec 23 10:47:45 fw kernel: 618 pages slab
Dec 23 10:47:45 fw kernel: 55 pages pagetables

(The figures vary)

I have tried redownloading and reinstalling the kernel, kernel-modules 
and module-init-tools tgzs. No difference. I replaced the hd (it was 
giving intermittent error messages) and reinstalled. No difference.

Now what?

TIA,

Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
