From: Ray Olszewski <ray@comarre.com>
Subject: Re: something like cron
Date: Tue, 10 Dec 2002 20:37:37 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021210203102.020d01f0@celine>
References: <200212102237.46881.r4mz3z@yahoo.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212102237.46881.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

To get help with this, you will have to be a little less abstract. Telling 
us you "can't do it", with "it" not very clearly explained, won't get you 
more than vagueness in return.

Certainly, cron can run a script every 5 minutes, and that script can check 
if you are connected (to what? I'm guessing a dial-up Internet connection), 
then either make a connection if there is not one or use the existing 
connection if there is one.

Best would be to show us what you are doing now (the script and the related 
crontab entry, or whatever "using cron" refers to) and show us the error it 
is logging (or whatever other evidence it leaves of its failure).

At 10:37 PM 12/10/02 +0000, r4mz3z wrote:
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Hi friends...
>   I'm trying to run an application each XX time, I'm using cron but with 
> it I
>can't do it... I have a script to send a email to my admin but I need to use
>this script since I connect and each 5 minutes.
>   Example:
>         10:32 -> connect --> run this script
>         10:37 -> run the script
>         10:42 -> run the script
>         ...
>   Thank you very much




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
