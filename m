From: lindax newbie <linux-newbie@tlinx.org>
Subject: Re: Locate Vs Find
Date: Thu, 25 Nov 2004 13:00:18 -0800
Message-ID: <41A647E2.1080302@tlinx.org>
References: <20041122165244.62360.qmail@web52904.mail.yahoo.com> <1101185010.3786.9.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101185010.3786.9.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: Ankit Jain <ankitjain1580@yahoo.com>, Linux Newbie <linux-newbie@vger.kernel.org>

If you look at the 'updatedb' script, you'll even find that it uses
the 'find' command to build the static database.  Normally the database
is rebuilt only once per/day -- in the wee hours of the morning if
your computer is on then otherwise, it'll run soon after you turn it
on in the morning (in the default configuration).  As Jagadeesh says,
locate is much faster -- basically being a "grep" through a large text
database, but it doesn't contain all the same info as 'find' can access
and is only up-to-date from when it was last run...

linda

Jagadeesh Bhaskar P wrote:

>On Mon, 2004-11-22 at 22:22, Ankit Jain wrote:
>  
>
>>Which is more efficient? /if both perform the same
>>work and are not different then why shoudl we have 2 ?
>>    
>>
>
>As far as I know, locate is based on a database storing locations of
>file. It doesnot search physically throughout the directory hierarchy.
>So it is many a time faster. But you have to update the database
>periodically with an "updatedb" command. Otherwise even error locations
>may be the result.
>
>Find doesnt depend on any such databases. It searches throughout the
>directory hierarchy. This case results are always more reliable, but
>mostly slow. 
>
>It can be seen by "finding" a file from the "/" and "locating" the same.
>
>I think that trade-off enough a reason!!
>
>  
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
