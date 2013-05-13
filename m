From: "Joseph D. Wagner" <joe@josephdwagner.info>
Subject: Excessive Swapping Under Minimal Load
Date: Mon, 13 May 2013 16:28:25 -0700
Message-ID: <a3706461cdb68ac2c276d9f12d499eea@josephdwagner.info>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I am trying to use duplicity to backup my /home to an external hard 
drive
(usb 2 interface).  After running for a few minutes, my io slows to a 
crawl.
My system reports using about 300-400MB of swap, even though only about
600MB / 4GB is in use.

I am trying to isolate the cause.  It may be duplicity in conjunction 
with
the particulars of my configuration (see below).  I get good 
performance
under normal circumstances.  I am using fedora 18, which has /tmp 
mounted
using tmpfs, but duplicity never uses more than 1.0GB - 1.1GB.

First, is this the correct forum for asking for this kind of help?

Second, what information

The particulars of my configuration:
sda1 -> win7 hidden boot
sda2 -> win7 regular
sda3 -> grub2 boot
sda5 -> luks swap
sda6 -> luks ext4 root
sda7 -> regular ext4 data
sdb1 -> luks userdata1 -> md raid 0 with userdata1 & userdata2-> ext4 
home
sdc1 -> luks userdata2 -> md raid 0 with userdata1 & userdata2-> ext4 
home

My thinking in putting md raid on top of luks was that I would be able 
to
better use multithreading (2 luks, 1 per physical drive), whereas 
putting
luks on top of md raid might create a choke point (1 luks for 1 virtual
drive).  I'll admit that this might be the problem.  However, it works 
fine
under normal circumstances.

I was hoping someone could help me either 1) isolate what is causing 
the
swapping, or 2) tell me what is wrong with my configuration based upon 
their
knowledge of how the kernel works.

Thanks in advance.

Joseph D. Wagner
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
