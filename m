From: sumit kalra <i_am_sumit_kalra@yahoo.com>
Subject: Re: what do the dots mean?
Date: Sun, 4 Sep 2005 13:05:33 +0100 (BST)
Message-ID: <20050904120533.40576.qmail@web61014.mail.yahoo.com>
References: <dfeaqa$qch$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <dfeaqa$qch$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: _z33 <timid.Gentoo@gmail.com>, linux-newbie@vger.kernel.org

Well, the first dot along with the 24 (%.24s) 
specifies to printf to print only 24 characters of the
string.

Second dot is a full stop after the string. :-)

-Sumit

--- _z33 <timid.Gentoo@gmail.com> wrote:

> I'm not able to understand the usage of dots (inside
> the printf's 
> arguments) in the following code. Please enlighten
> me!
> 
> 	[code]
> 	#include <stdio.h>
> 	#include <time.h>
> 	
> 	main()
> 	{	
> 		time_t now;
> 			
> 		time(&now);
> 		printf("It's %.24s.\n", ctime(&now));
> 		
> 		system ("PAUSE");
> 		return 0;
> 	}
> 	[/code]
> 
> _z33
> -- 
> I love TUX; well... that's an understatement :)
> 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
___________________________________________________________ 
Does your mail provider give you FREE antivirus protection? 
Get Yahoo! Mail http://uk.mail.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
