From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: what do the dots mean?
Date: Mon, 05 Sep 2005 09:04:21 -0700
Message-ID: <431C6C85.1050403@bcgreen.com>
References: <dfeaqa$qch$1@sea.gmane.org> <20050904120533.40576.qmail@web61014.mail.yahoo.com> <dfeo9p$m08$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dfeo9p$m08$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: _z33 <timid.Gentoo@gmail.com>
Cc: linux-newbie@vger.kernel.org

No the second dot does NOT disappear... Watch  your output closely.
You should also get yourself a linux distribution ( www.knoppix.org
has bootable CD or DVD images ).  and try the command 'man ctime'
(the reason why I say that is that is that 'PAUSE' is a DOS command)

The %.24s says "Only print the first 24 characters of the output
from 'ctime'.  You see, the output from ctime includes a newline as
the last (25th) character of it's output,  so  %.24s chops off the output
just before the newline.

I.e. the resultint output is   <DATE>\n.\n

The trailing dot is now on the next line.

_z33 wrote:

> sumit kalra wrote:
>
>> Well, the first dot along with the 24 (%.24s) specifies to printf to 
>> print only 24 characters of the
>> string.
>>
>> Second dot is a full stop after the string. :-)
>>
>
> Thanks for the info.
>
> But in that case when you remove the first dot you should be able to 
> see the second dot for sure, right? But the moment I remove the first 
> dot, the second dot disappears from the output.

        printf("It's %.24s.\n", ctime(&now));
        system ("PAUSE");

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
   Powerful committed communication. Transformation touching
     the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
