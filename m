From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Getting c/assembler listings
Date: Tue, 29 Oct 2002 15:04:37 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02102915043700.00397@unix.pa3gcu>
References: <7C078C66B7752B438B88E11E5E20E72E0EF5A3@GENERAL.farsite.co.uk>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <7C078C66B7752B438B88E11E5E20E72E0EF5A3@GENERAL.farsite.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-newbie@vger.kernel.org

On Tuesday 29 October 2002 12:03, Kevin Curtis wrote:
> Hi,
> 	I hope this question is not too technical.  When an oops message is
> generated and decoded with ksymoops, how do I get an assembler listing of
> the module that caused the problem so I can see where in my program the
> error occurred.  The ksymoops output seems to be bytes of code offset from
> the start of a function.  Do I use a switch in my makefile?  Will the
> listing have offsets in it from the start of the module or the start of
> each function?  Is there any correlation to line numbers in the original .c
> file?

You can run 'gdb' on your running kernel.
You will need to do some things beforehand, its all explained in 
/usr/src/linux/README, the part about "If something goes wrong".

I am not so well up on gdb but i belive you can run it on a module itself 
altho' i have never tryed dthat.

>
>
> Thanks
>
> Kevin

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
