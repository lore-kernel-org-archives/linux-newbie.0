From: Ray Olszewski <ray@comarre.com>
Subject: Re: crontab syntax ?
Date: Sat, 07 Jun 2003 13:27:16 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030607131805.01fe8a60@celine>
References: <20030529165407.A446@lnx2.w8mch.ampr.org>
 <200306042101.56986.pa3gcu@zeelandnet.nl>
 <20030605093027.A233@lnx2.w8mch.ampr.org>
 <200306052108.36121.pa3gcu@zeelandnet.nl>
 <20030607104727.A355@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EE24201.DA793DC8@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:50 PM 6/7/2003 -0400, Chuck Gelm wrote:
>Howdy, y'all:
>
>  I want to run a script monthly.
>(update my dynamic DNS account)
>I (as 'root') ran 'crontab -e' and added this line:
>
>5 6 7 * date /usr/local/src/ez/dyndns.conf >> /share/dyndnsup.txt 2>>
>/share/dyndnsup.txt
>
>This seems to be the syntax indicated by 'man crontab'.
>If I understand the syntax of crontab, the above line will
>every 7th of the month, at 06:05, execute my dyndns.conf file
>and send standard and error messages to file /share/dyndnsup.txt.
>
>  Is this correct syntax?

Probably. I'm not familiar with the use of "date" as the fifth field (for 
day of the week), and I can't find it listed as an option in my man page, 
so I am not sure about that piece. I would write this entry ...

5 6 7 *  *      /usr/local/src/ez/dyndns.conf >> /share/dyndnsup.txt 2>> 
/share/dyndnsup.txt.

... with the last * indicating any day of the week.

>  Is there a syntax checker for crontab like testparm for samba?

crontab itself will inform you if any of the 5 time fields has an invalid 
entry, whenever you exit your editor (and it displays the "installing new 
crontab" message). crontab has no way fo knowing if the entry for what to 
run is valid or not.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
