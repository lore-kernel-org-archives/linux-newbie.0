From: Ray Olszewski <ray@comarre.com>
Subject: Re: Damn unmouted root
Date: Fri, 25 Jun 2004 07:09:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040625070339.01f9ebf8@celine>
References: <1088132157.21223.11.camel@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1088132157.21223.11.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:55 PM 6/24/2004 -0400, John T. Williams wrote:
>I've been having the hardest time getting a kernel I've compiled to
>work.  I've compiled kernels at least a dozen times and this is the
>first one that has given me any real trouble.  I think the issue might
>be the scsi hard-drive.
>
>I've compiled in scsi support ( actually in, not as module ), but every
>time I try to boot the kernel, i get the error
>
>VFS unable to mount root fs on /dev/hdf1
>
>and a kernel panic.
>
>the kernel uses devfs and I'm passing the kernel
>
>root=/dev/hdf1 devfs=mount
>
>as I said, I'm pretty sure its the scsi harddrive that is giving me
>problems as its the only thing in this situation that I've never had to
>deal with before, but even with that insight I haven't been able to
>figure out how to get the kernel.


With absolutely no details provided, either about the kernel you are 
compiling or the system you are trying to run it on (or what Linux distro 
is involved), all one can really do is make "obvious" comments. In that 
spirit -- it is unusual for scsi drives to use "hd**" devices. They usually 
are "sd**" devices. Might you have made an error of that sort?

If your problem is not that, or the lack of filesystem support someone else 
suggested, please try posting a description that includes the details ... 
including why you believe your root scsi drive is accessed as /dev/hdf .



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
