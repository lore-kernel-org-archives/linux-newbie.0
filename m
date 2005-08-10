From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: vfs unable to mount root fs on unknown--block(0,0).
Date: Wed, 10 Aug 2005 17:02:19 +0200
Message-ID: <200508101702.20048.pa3gcu@zeelandnet.nl>
References: <C349E772C72290419567CFD84C26E01709FF44@mail.esn.co.in>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E01709FF44@mail.esn.co.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

On Wednesday 10 August 2005 08:10, Mukund JB. wrote:
> Dear Robert,
>
> Yes, I think I have seen this and many other mails speaking about this
> issue but I am unable to find the solution.
> How did they fix it is written or replied no where?

Most of the mails i have seen simply say what i told you in another mail.

mount -t auto /dev/xxx /mnt/xxx

> I have tried their suggestion like making EXT, IDE and FAT support
> inbuilt to the kernel rather than modules.
> Even then the problem persists.

Modules are fine, most all distribution installed kernels have fat support.

> Did you find any one mentioning the solution for this issue?

Well yes there are plenty of mails explaining the problem and mentioning 
different ways of solving it. You may however need to read between the lines.

>
> Also, the group discussion you find when you type "FAT12" in Google is
> me myself.

Not at all, your mails are there but there are hundreds more explaining what 
to do.

>
> Thanks & regards,
> Mukund Jampala
>

BTW please read my sig.

--
Regards "RICHARD"

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
