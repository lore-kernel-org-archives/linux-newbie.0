From: Peter Garrett <peterg@fishinternet.com.au>
Subject: Fw: Re: Create files with specific sizes?
Date: Tue, 14 Dec 2004 21:55:17 +1100
Message-ID: <20041214215517.76c0b120.peterg@fishinternet.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



Begin forwarded message:

Date: Tue, 14 Dec 2004 10:41:19 +0100
From: SVisor <svisor@lycos.com>
To: linux-newbie@vger.kernel.org
Subject: Re: Create files with specific sizes?


I have a follow up question.

...
>>is there any way (some command) that will allow me to 
>>create blank files with specific sizes, eg 1MB, 5MB, 10MB etc.
...
> dd if=/dev/zero of=file1 bs=1k count=1024

I wanted a file of garbage, not zeroes.
So I tried: dd if=/dev/random of=file bs=1k count=1024

But to my suprise I got only a ~4k file. I know that dev/random may run 
out of values. But should dd not wait until there are enought of data?

// Jarmo

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
