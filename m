From: Robin Holt <holt@sgi.com>
Subject: Re: Commenting out out_of_memory() function in __alloc_pages()
Date: Fri, 7 Jul 2006 04:54:41 -0500
Message-ID: <20060707095441.GA3913@lnx-holt.americas.sgi.com>
References: <BKEKJNIHLJDCFGDBOHGMAEBKDCAA.abum@aftek.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <BKEKJNIHLJDCFGDBOHGMAEBKDCAA.abum@aftek.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Abu M. Muttalib" <abum@aftek.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, linux-mm <linux-mm@kvack.org>

I am not sure about x86, but on ia64, you would be very hard pressed
for this application to actually run you out of memory.  With the
memset commented out, you would be allocating vmas, etc, but you
would not be actually putting pages behind those virtual addresses.

Thanks,
Robin

---------------------------  test1.c  ----------------------------------

#include<stdio.h>
#include<string.h>

main()
{
	char* buff;
	int count;
	
	count=0;
	while(1)
	{
		printf("\nOOM Test: Counter = %d", count);
		buff = (char*) malloc(1024);
	//	memset(buff,'\0',1024);
		count++;
			
		if (buff==NULL)
		{
			printf("\nOOM Test: Memory allocation error");
		}
	}
}
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
