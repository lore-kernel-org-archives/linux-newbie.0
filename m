From: Natarajan <knutties@indiainfo.com>
Subject: Re: How to convert a MSDOS text file to Linux text file?
Date: Fri, 31 May 2002 20:17:24 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205312016.50361.knutties@indiainfo.com>
References: <20020531141900.TDRO5116.mtiwmhc23.worldnet.att.net@alan>
Reply-To: knutties@indiainfo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020531141900.TDRO5116.mtiwmhc23.worldnet.att.net@alan>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Womack <arwbackup@worldnet.att.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Friday 31 May 2002 10:18, Alan Womack wrote:

> A post up on the ldap list on another problem, suggested this can cause a
> problem due to the MSDOS LF CR (CR LF?) appended to each line vs the LF in
> unix land.
>
> What command line utility can I run on my txt files to fix this "problem"?
>
> Thanks
> Alan

Use unix2dos that come with most of the standard distributions.
-- 
Natarajan


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
