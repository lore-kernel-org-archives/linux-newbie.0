From: Ray Olszewski <ray@comarre.com>
Subject: Re: howto configuring kernel and modules.conf for automatic
  loading of ide-scsi
Date: Sat, 24 Jan 2004 20:31:06 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040124202304.01f31308@celine>
References: <20040125041110.22704715.agri@desnol.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040125041110.22704715.agri@desnol.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:11 AM 1/25/2004 +0300, Agri wrote:
>i'm  confused with module loading.
>
>i have cdrw and configure ide-scsi emulation for it.
>doing "modprobe ide-scsi; mount /dev/scd0" is fine.
>
>but, how to configure automatic loading of ide-scsi?
>it seems that just "touching" for /dev/scd0 do not
>cause kmod to exec modprobe at all. What to do?

You load them as part of the boot/init process. Exactly how you do that 
depends quite a bit on which Linux distrobution you are using. The advice 
someone else posted, for example, looked like it was for Slackware. In 
Debian, you'd add the module names to /etc/modules . Probably the 
assortment of distros descended from Red Hat has yet another procedure for 
this.

>i think that loading several modules at boottime are not the best idea,
>in that case - why do i use modules at all?

There are many reasons to use modules. The specific reasons depend on the 
specific modules in question. In this instance, though, you should feel 
free to recompile your kernel to incorporate ide-scsi support (of course, 
also compiling in the other modules that ide-scsi needs in order to function).

You are entitled to your opinion ... it is your system after all ... but 
personally I think it is smart to load during init, or compile in, support 
for devices that hold filesystems.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
