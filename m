From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: vfs unable to mount root fs on unknown--block(0,0).
Date: Wed, 10 Aug 2005 11:40:04 +0530
Message-ID: <C349E772C72290419567CFD84C26E01709FF44@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Dear Robert,

Yes, I think I have seen this and many other mails speaking about this
issue but I am unable to find the solution.
How did they fix it is written or replied no where?

I have tried their suggestion like making EXT, IDE and FAT support
inbuilt to the kernel rather than modules.
Even then the problem persists.

Did you find any one mentioning the solution for this issue?

Also, the group discussion you find when you type "FAT12" in Google is
me myself.

Thanks & regards,
Mukund Jampala

>-----Original Message-----
>From: Richard Adams [mailto:pa3gcu@zeelandnet.nl]
>Sent: Tuesday, August 09, 2005 9:03 PM
>To: Mukund JB.
>Cc: linux-newbie@vger.kernel.org
>Subject: Re: vfs unable to mount root fs on unknown--block(0,0).
>
>On Tuesday 09 August 2005 13:59, Mukund JB. wrote:
>> Dear all,
>>
>> I have rebuild my kernel 2.6.10 inserting some debug messages in the
FS
>> sub-system.
>> Later when I tried to boot the new kernel image I am failing with
>> following message.
>>
>> 	Kernel panic: VFS: Unable to mount root fs on
>> unknown--block(0,0)
>
>A quite well known pithole really.
>
>> My kernel build process reported NO error messages.
>>
>> I have searched the groups for this problem but I did not find any
>> solution mentioned.
>
>You seem to have forgotten http://google.com/linux
>which give hundreds of hits, i think you should read this one for your
>answer.
>
>http://www.linuxforums.org/forum/post-256381.html
>
>On another note i typed "fat12" into google as well, there are plenty
of
>answers there about you digital camera problem as well.
>
>
>--
>Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
