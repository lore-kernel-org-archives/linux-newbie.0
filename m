From: Ray Olszewski <ray@comarre.com>
Subject: Re: Script as root
Date: Tue, 01 Oct 2002 08:52:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001085016.02c818f0@celine>
References: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003101c26952$2d7ebab0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

Yes. You want to set the suid bit on it and have it owned by root. "man 
chmod" (or maybe other chmod documentation) for the details.

At 09:55 AM 10/1/02 -0400, Paul Kraus wrote:
>I have a backup script that mounts a drive on my xp workstations. Is
>there a way I can set this script to run as root so that I do not have
>to su every time I want to run it?



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
