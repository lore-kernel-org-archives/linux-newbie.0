From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Samba issues
Date: Mon, 17 Mar 2003 20:35:24 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03031720352400.01189@unix.pa3gcu>
References: <20030317201127.53747.qmail@web13405.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030317201127.53747.qmail@web13405.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Monday 17 March 2003 20:11, Abhijit Vijay wrote:

> Copy files from Server to Client 402 MB
> (avg file size 58kB)
> Linux => 2.71 MB/sec
> WinXP => 3.42 MB/sec
>
> Copy file from Server to Client 0.99 GB
> (avg file size 86,630 kB)
> Linux => 4.06 MB/sec
> WinXP => 8.49 MB/sec
>

I would make a bet that your ethernet cards are not negotiating properly and 
are only half duplex and/or only 10MB instead of 100MB.

mii-tool will tell you just how they are set.
You will also need to check both ends.

This is a common problem.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
