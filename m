From: Ray Olszewski <ray@comarre.com>
Subject: Re: /dev/cdrom is not a valid block device?
Date: Thu, 03 Apr 2003 08:33:04 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030403082113.01e99628@celine>
References: <20030403123500.GA749@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030403123500.GA749@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

At 06:35 PM 4/3/2003 +0600, Amin wrote:
>Hi all,
>
>Shortly after recompiling my kernel (ignoring numerous
>warnings and errors therein), I tried to mount my CD drive
>in the normal way:

It is normal to get manay, many **warnings** while compiling a kernel. But 
if you got **errors**, you better go back and look at them. (Personally, I 
doubt you really did get errors, since they are supposed to cause the 
compile process to abort ... you cannot, in practice, "ignore" actual 
errors. But since I can't see through your eyes, I have only what you wrote 
to go on.)

>mount /mnt/cdrom
>
>But I'm getting a ``mount: /dev/cdrom is not a valid block
>device''.  Does anyone have any idea why this is appearing?


The most likely cause is that you omitted some kernel driver needed to 
access the device when you recompiled your kernel.

Next most likely is that you compiled what you needed as a module, but the 
module is not loading. Check either /etc/modules or /etc/modules.conf (or 
maybe /etc/conf.modules ... distros vary a bit here) to see that you are 
loading everything you need to.

Next is that there is something wrong with the /dev/cdrom symlink. What 
does it point to, and is that the right real device? (BTW, I am assuming 
there is a CD with an iso9660 filesystem in the drive when you try to mount.)

Last (and least likely) is a problem in /etc/fstab. What does the line for 
/mnt/cdrom look like?

It is also possible that you missed some step in the process of 
configuring, compiling, and installing the kernel. Since your prior message 
indicated that you successfully installed the NIC module, I'm classing this 
as a remote possibility.

Like Richard, I cannot be more specific without knowing:

A. What sort of CD-ROM drive is involved (ATAPI, SCSCI, one of the ones 
that requires a special driver).

B. Where is it really mounted (not just a symlink).

C. What kernel options you selected relevant to whatever sort of drive it 
is. (For example, if it is an ATAPI drive, did you select "ide-cd" support 
when configuring the kernel?)

D. The basics: what distro, what version, and what kernel version.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
