From: Jim Reimer <wa5rrh@arrl.net>
Subject: Re: Script as root
Date: Tue, 01 Oct 2002 11:11:52 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D99C948.9020704@arrl.net>
References: <5.1.0.14.1.20021001085016.02c818f0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

suid bit on a script is ignored, isn't it?

-jdr-

Ray Olszewski wrote:
> Yes. You want to set the suid bit on it and have it owned by root. "man 
> chmod" (or maybe other chmod documentation) for the details.
> 
> At 09:55 AM 10/1/02 -0400, Paul Kraus wrote:
> 
>> I have a backup script that mounts a drive on my xp workstations. Is
>> there a way I can set this script to run as root so that I do not have
>> to su every time I want to run it?
> 
> 
> 
> 
> -- 
> -------------------------------------------"Never tell me the 
> odds!"--------
> Ray Olszewski                    -- Han Solo
> Palo Alto, California, USA              ray@comarre.com
> ------------------------------------------------------------------------------- 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
