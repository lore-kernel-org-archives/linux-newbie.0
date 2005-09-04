From: _z33 <timid.Gentoo@gmail.com>
Subject: what do the dots mean?
Date: Sun, 04 Sep 2005 13:55:35 -0700
Message-ID: <dfeaqa$qch$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I'm not able to understand the usage of dots (inside the printf's 
arguments) in the following code. Please enlighten me!

	[code]
	#include <stdio.h>
	#include <time.h>
	
	main()
	{	
		time_t now;
			
		time(&now);
		printf("It's %.24s.\n", ctime(&now));
		
		system ("PAUSE");
		return 0;
	}
	[/code]

_z33
-- 
I love TUX; well... that's an understatement :)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
