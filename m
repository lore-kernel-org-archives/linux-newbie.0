From: Joseph Jackson <skoidat@lvcm.com>
Subject: Re: gcc
Date: Wed, 26 Jun 2002 00:48:20 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D1971C4.1070809@lvcm.com>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15B5@ccdc-exchg.careercommunity.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Sridhar J (june end)" <sridharj.hyd@cxknetworks.com>
Cc: linux-newbie@vger.kernel.org



Sridhar J (june end) wrote:

> Hello
> 
> When I compile a C program using gcc, I get an a.out file. But when I type
> a.out, the error is "No such command"
> 
> How do I execute the file?
> 
> Regards
> Sridhar
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 


Well what kind of file are you tring to compile? most of the time if you are 
tring to compile a single source file it will be named program.c to compile it 
do this
gcc program.c -o program
it tells gcc to compile program.c and that the output should be called program
which will be the binary version of that file. See how that works out for ya.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
