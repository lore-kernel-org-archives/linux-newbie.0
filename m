From: ichi@ihug.co.nz
Subject: Re: tar for "full" floppy backup?
Date: Sun, 08 Dec 2002 08:41:33 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF305BD.3BA2C910@ihug.co.nz>
References: <Pine.LNX.4.50.0212071157090.5141-100000@filesrv1.baby-dragons.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Cc: linux-newbie@vger.kernel.org

Mr. James W. Laferriere wrote:
> 
> Compressed you are not going to accomplish easily .
> Maybe someone else can address a method of compressing 
> the input INLINE with the multi-volume archive issue .

Couldn't this simply be done by using tar twice:  first
tar with -zcf and then tar the result multi-volume?

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
