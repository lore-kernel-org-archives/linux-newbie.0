From: Ray Olszewski <ray@comarre.com>
Subject: Re: Compiation Err:Derefercing pointer to incomplete type
Date: Mon, 07 Apr 2003 09:43:52 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030407093546.01e9bef8@celine>
References: <200304071112.QAA26141@WS0005.indiatimes.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304071112.QAA26141@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: ramands <ramands@indiatimes.com>, linux-newbie@vger.kernel.org

At 05:16 PM 4/7/2003 +0530, ramands wrote:

>whenever i incude header uaccess.h for copy my compiler throws a lot of 
>compilation errors . They are generaly of nature
>
>uaccess.h>dereferencing pointer to incomplete type
>
>sched.h>dereferncing pointer to incomplete type
>
>i am using redhat 8.0
>i have read that some distributions do not provide complete headers for 
>module level programming
>Is that the reason for error i am getting ?


1. What do you mean by "for copy"?

2. Are you #include'ing, in these cases, the uaccess.h that is located in 
/usr/include/asm, or one that comes as part of kernel source? (I ask 
because the context of your questions is "module level programming".)  If 
the second, what kernel, and are you compiling for i86 hardware?

3. The lines you (sort of) quote look more like warnings than errors, but 
it is hard to be sure from the small fragments you provide. Could you 
please post a complete "error" line or two?

4. What is "my compiler"? Some version (which) of gcc? Of g++? Or are you 
using some other compiler?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
