From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: Locate Vs Find
Date: Tue, 23 Nov 2004 10:13:30 +0530
Message-ID: <1101185010.3786.9.camel@myLinux>
References: <20041122165244.62360.qmail@web52904.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041122165244.62360.qmail@web52904.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Mon, 2004-11-22 at 22:22, Ankit Jain wrote:
> Which is more efficient? /if both perform the same
> work and are not different then why shoudl we have 2 ?

As far as I know, locate is based on a database storing locations of
file. It doesnot search physically throughout the directory hierarchy.
So it is many a time faster. But you have to update the database
periodically with an "updatedb" command. Otherwise even error locations
may be the result.

Find doesnt depend on any such databases. It searches throughout the
directory hierarchy. This case results are always more reliable, but
mostly slow. 

It can be seen by "finding" a file from the "/" and "locating" the same.

I think that trade-off enough a reason!!

-- 
With regards,

Jagadeesh Bhaskar P
R&D Engineer
HCL Infosystems Ltd
Pondicherry
INDIA

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
