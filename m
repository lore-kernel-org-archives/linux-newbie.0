From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: /dev/cdrom is not a valid block device?
Date: Thu, 3 Apr 2003 15:44:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03040315443201.01175@unix.pa3gcu>
References: <20030403123500.GA749@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030403123500.GA749@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Amin <raihan@citech-bd.com>, linux-newbie@vger.kernel.org

On Thursday 03 April 2003 12:35, Amin wrote:
> Hi all,
>
> Shortly after recompiling my kernel (ignoring numerous
> warnings and errors therein),

If you saw an "error" then your compile woul;d have stopped period, warnings 
on the otherhand do NOT stop a compile, i expect you think a warning is the 
same as an error however this is not the case when compiling a program or a 
kernel.

> I tried to mount my CD drive in the normal way:
>
> mount /mnt/cdrom
>
> But I'm getting a ``mount: /dev/cdrom is not a valid block
> device''.  Does anyone have any idea why this is appearing?

You have forgotten to include cdrom support as per the CDROM-HOWTO.
Or simply no iso9660 or cdrom support in your kernel or compiled as modules.

I cannot say more as you did not say if the device is a SCSI device IDE or 
whatever.

>
> Thanks,
> Yawar Amin
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
