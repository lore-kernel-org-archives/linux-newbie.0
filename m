From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Re: Patching problems
Date: Tue, 08 Oct 2002 20:07:04 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021008180704.7355.qmail@linux.ik5bcu.ampr.org>
References: <02100813081404.00235@unix.pa3gcu>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02100813081404.00235@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org


On 08-Oct-2002 pa3gcu wrote:
> On Tuesday 08 October 2002 00:55, Marco Calistri wrote:
>> What does it means and how can I correct?
> 
> It means the patch failed, a copy of the failure was written to 
> securetar.c.rej .
> 
> I took a look at the old file from the arcive and the patch, what i found is 
> that the origanal code has tabs before text in the .c file and the patch 
> itself has "whitespaces" .
> 
> If one reads 'man patch' we see that the -l option "ignores" the difference.
> 
> So you need to use;
> 
> patch -pX -l < patch-file
> The X i am sure you will understand, subtitute according to which directory 
> you run the patch from.
> 
> Works here for me against a clean amavis-0.2.1 source.
> 
> snip.
> 
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/

Many thanks Richard the patching ran flawlessly after I learned something
more from you...

Greetings,Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
