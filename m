From: Ray Olszewski <ray@comarre.com>
Subject: Re: CD-RW-Drive & cdrecord & ATAPI
Date: Wed, 29 Dec 2004 11:43:45 -0800
Message-ID: <5.1.0.14.1.20041229113822.021f93d0@celine>
References: <5.1.0.14.1.20041229074910.0217b010@celine>
 <5.1.0.14.1.20041229074910.0217b010@celine> <41D302E6.2080903@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41D302E6.2080903@gelm.net>
References: <5.1.0.14.1.20041229074910.0217b010@celine>
 <5.1.0.14.1.20041229074910.0217b010@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; x-avg-checked="avg-ok-673D27F4"
Content-Transfer-Encoding: 7bit
To: chuck@gelm.net
Cc: linux <linux-newbie@vger.kernel.org>

At 02:17 PM 12/29/2004 -0500, chuck gelm wrote:

>Ray Olszewski wrote:
><snip>
>>Others have said a lot here already, but I want to raise more fundamental 
>>puzzlement. I didn't know cdrecord (see below) was even able to burn to 
>>atapi devices under 2.4.x kernels. You might want to report the error 
>>messages in more detail.
><snip>
>
>Hi, Ray:
>
>  I am using Slackware v9.1, kernel 2.4.22, and a
>"CRW-5224A, ATAPI CD/DVD-ROM drive"
>
>   'cdrecord' can 'burn' to ATAPI devices with SCSI emulation.

Sorry, Chuck. Bad writing on my part. When I wrote the above, I meant to be 
referring to writing to atapi devices in native mode. I use scsi emulation 
here in pretty much the  same way you do and have done so for years.

I was surprised (and still am) that Peter  has an ATAPI CD burner running 
at all under 2.4.x, unless he is already using SCSI emulation (relevant 
since most of the feedback he got was about using SCSI emularion ... if 
he's already doing that, it won't help him).




-- 
No virus found in this outgoing message.
Checked by AVG Anti-Virus.
Version: 7.0.296 / Virus Database: 265.6.6 - Release Date: 12/28/2004


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
