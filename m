From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: vfs unable to mount root fs on unknown--block(0,0).
Date: Tue, 9 Aug 2005 17:32:58 +0200
Message-ID: <200508091732.59002.pa3gcu@zeelandnet.nl>
References: <C349E772C72290419567CFD84C26E01709FE93@mail.esn.co.in>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E01709FE93@mail.esn.co.in>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

On Tuesday 09 August 2005 13:59, Mukund JB. wrote:
> Dear all,
>
> I have rebuild my kernel 2.6.10 inserting some debug messages in the FS
> sub-system.
> Later when I tried to boot the new kernel image I am failing with
> following message.
>
> 	Kernel panic: VFS: Unable to mount root fs on
> unknown--block(0,0)

A quite well known pithole really.

> My kernel build process reported NO error messages.
>
> I have searched the groups for this problem but I did not find any
> solution mentioned.

You seem to have forgotten http://google.com/linux
which give hundreds of hits, i think you should read this one for your answer.

http://www.linuxforums.org/forum/post-256381.html

On another note i typed "fat12" into google as well, there are plenty of 
answers there about you digital camera problem as well.


--
Regards Richard.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
