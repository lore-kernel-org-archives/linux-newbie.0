From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Patching problems
Date: Tue, 8 Oct 2002 13:08:14 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02100813081404.00235@unix.pa3gcu>
References: <20021008005553.7719.qmail@linux.ik5bcu.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021008005553.7719.qmail@linux.ik5bcu.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Marco Calistri <ik5bcu@tin.it>, linux-newbie@vger.kernel.org

On Tuesday 08 October 2002 00:55, Marco Calistri wrote:
> What does it means and how can I correct?

It means the patch failed, a copy of the failure was written to 
securetar.c.rej .

I took a look at the old file from the arcive and the patch, what i found is 
that the origanal code has tabs before text in the .c file and the patch 
itself has "whitespaces" .

If one reads 'man patch' we see that the -l option "ignores" the difference.

So you need to use;

patch -pX -l < patch-file
The X i am sure you will understand, subtitute according to which directory 
you run the patch from.

Works here for me against a clean amavis-0.2.1 source.

snip.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
