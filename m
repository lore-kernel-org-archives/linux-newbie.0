From: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Subject: Re: need method of backing up files
Date: Fri, 8 Nov 2002 10:09:55 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0211081003460.1652-100000@filesrv1.baby-dragons.com>
References: <4.3.2.7.0.20021108184521.023f8f00@lox2.loxinfo.co.th>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4.3.2.7.0.20021108184521.023f8f00@lox2.loxinfo.co.th>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Shaggy Im-erbtham <shaggy@loxinfo.co.th>
Cc: linux-newbie@vger.kernel.org


	Hello Shaggy ,  Look at rsync ,  works beautifully for me . JimL
	http://rsync.samba.org/index.html

On Fri, 8 Nov 2002, Shaggy Im-erbtham wrote:

> I use Slackware 7.0 with upgraded 2.4.18 kernel in a box which serves
> as file server to 5 win9x clients.
>
> Is there a method to perform incremental back-ups for every user, for
> every day of the week.
>
> Eg.  /home/peter
>         /home/paul
>         /home/mary
>
> to be backed up everyday into day-of-the-week directories
> so on Monday, files that were updated today would be copied to
> each user's sub-directory in the monday directory.
> /mnt/1monday/peter
> /mnt/1monday/paul
> /mnt/1monday/mary
>
> and so on
> /mnt/2tuesday/peter
> /mnt/2tuesday/paul
> /mnt/2tuesday/mary
>
> Sometimes we need to track the daily changes that are made, that's
> why.
>
> I'm aware RAID is available but I think this is another thing altogether.
>
> TIA
> Shaggy
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
       +------------------------------------------------------------------+
       | James   W.   Laferriere | System    Techniques | Give me VMS     |
       | Network        Engineer |     P.O. Box 854     |  Give me Linux  |
       | babydr@baby-dragons.com | Coudersport PA 16915 |   only  on  AXP |
       +------------------------------------------------------------------+

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
