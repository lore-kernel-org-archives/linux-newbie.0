From: "Tom Beer" <mailings@analogon.com>
Subject: lilo
Date: Sat, 27 Apr 2002 18:31:48 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00c901c1ee09$09da43a0$0901a8c0@system>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I just compiled a new kernel. Now I have
the vmlinux file in /usr/scr/linux-2.4.18/linux/arch/i386/boot/vmlinux
If I copy the file to boot and edit the /etc/lilo.conf
and run a lilo -t -v  it says file too big.
If I cp bzImage to /boot/ as vmlinux it issues 
vmlinux-2.4.18-initrd.img not found.
Could anyone explain to me how to
get the right files in the /boot directory and run lilo on it.
I read the Kernel howto, but either something is missing
or I don't understand it (I favor the last alternative :-)
and I don't want to make an error.

Thanks in advance Tom

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
