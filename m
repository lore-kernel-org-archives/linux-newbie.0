From: Ray Olszewski <ray@comarre.com>
Subject: Re: gnome-search-tool database updating
Date: Tue, 11 Feb 2003 08:20:26 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030211080840.020f3ba0@celine>
References: <200302111505.h1BF5Nkh006244@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302111505.h1BF5Nkh006244@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, Haines Brown <brownh@hartford-hwp.com>

At 10:05 AM 2/11/03 -0500, Haines Brown wrote:
>[Note: My question doubles as a test message. I had trouble with
>aliasing, and so please make sure your reply to this message does not
>go to an obviously invalid address. Thank you.]
>
>The gnome-search-tool (RedHat 8.0) returns the warning:
>
>"warning: locate: warning: database /var/lib/slocate.db' is more than
>8 days old."
>
>Is this database supposed to update itself automatically? If not, how
>is that done? (you would think there would be a utility for that built
>into the interface)

If "slocate" is similar to "locate" in its operation, updating the database 
(using its analog to "updatedb") should be scheduled as a cron job, to run 
daily at some opportune time (on my Debian systems, the installation 
default is around 6:30 AM, as part of the "cron.daily" directory of 
scripts). If your system is not running 24/7, you might need to replace 
cron with a variant (like anacron) that is designed for systems that are 
not always on.

PS - The message came through with the correct To; and From: identities.



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
