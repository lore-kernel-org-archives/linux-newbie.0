From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mounting a new partition
Date: Wed, 17 Jul 2002 17:26:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020717172015.021706d0@celine>
References: <3D36028B.7060708@tulane.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D36028B.7060708@tulane.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: David Yeu <dyeu@tulane.edu>, Linux Newbie <linux-newbie@vger.kernel.org>

At 06:49 PM 7/17/02 -0500, David Yeu wrote:
>Just a quick question:
>
>If I create a new partition and mount it over a point which
>contains data (lets say /var), will all the data be copied over
>to the new partition, or will everything be destroyed?

No. That is, it will do neither of these things. The existing data will 
remains where they are, but they will be inaccessable, because the 
directory will now provide access to the mounted partition instead of its 
own contents.

>If the answer happens to be the latter, what's the workaround?

The "workaround" for what actually happens is to

         (a) temporarily mount the new partition somewhese different (say 
at /mnt)
         (b) cp the files from the old directory to the new partition
         (c) umount from the temporary location
         (d) mount the new partition in its new location
         (e) re-HUP or restart any processes that had files in the old, now 
hidden directory, open (so they write to the corresponding files in the new 
partition).

Once you know that everything works, you can delete the files from the old 
(now inaccessable) directory, by doing this same sort of multi-step process.
--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
