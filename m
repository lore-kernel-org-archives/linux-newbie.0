From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: crontab syntax ?
Date: Sat, 07 Jun 2003 18:23:21 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE265D9.56EA90D0@gelm.net>
References: <20030529165407.A446@lnx2.w8mch.ampr.org>
	 <200306042101.56986.pa3gcu@zeelandnet.nl>
	 <20030605093027.A233@lnx2.w8mch.ampr.org>
	 <200306052108.36121.pa3gcu@zeelandnet.nl>
	 <20030607104727.A355@lnx2.w8mch.ampr.org> <5.1.0.14.1.20030607131805.01fe8a60@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks, Ray:

Odd, here is a segment of (*my*) 'man crontab' showing
the example lines. Every example has 'date' as the 6th field. :-|
(*my* = slackware-8.0, kernel-2.2.19, firewall, ip-masq)
Maybe the examples show how to run the 'date' program?

# MIN HOUR DAY MONTH DAYOFWEEK   COMMAND
# at 6:10 a.m. every day
10 6 * * * date

# every two hours at the top of the hour
0 */2 * * * date

# every two hours from 11p.m. to 7a.m., and at 8a.m.
0 23-7/2,8 * * * date

# at 11:00 a.m. on the 4th and on every mon, tue, wed
0 11 4 * mon-wed date

# 4:00 a.m. on january 1st
0 4 1 jan * date

# once an hour, all output appended to log file
0 4 1 jan * date >>/var/log/messages 2>&1

Ray Olszewski wrote:
> 
> At 03:50 PM 6/7/2003 -0400, Chuck Gelm wrote:
> >Howdy, y'all:
> >
> >  I want to run a script monthly.
> >(update my dynamic DNS account)
> >I (as 'root') ran 'crontab -e' and added this line:
> >
> >5 6 7 * date /usr/local/src/ez/dyndns.conf >> /share/dyndnsup.txt 2>>
> >/share/dyndnsup.txt
> >
> >This seems to be the syntax indicated by 'man crontab'.
> >If I understand the syntax of crontab, the above line will
> >every 7th of the month, at 06:05, execute my dyndns.conf file
> >and send standard and error messages to file /share/dyndnsup.txt.
> >
> >  Is this correct syntax?
> 
> Probably. I'm not familiar with the use of "date" as the fifth field (for
> day of the week), and I can't find it listed as an option in my man page,
> so I am not sure about that piece. I would write this entry ...
> 
> 5 6 7 *  *      /usr/local/src/ez/dyndns.conf >> /share/dyndnsup.txt 2>>
> /share/dyndnsup.txt.
> 
> ... with the last * indicating any day of the week.
> 
> >  Is there a syntax checker for crontab like testparm for samba?
> 
> crontab itself will inform you if any of the 5 time fields has an invalid
> entry, whenever you exit your editor (and it displays the "installing new
> crontab" message). crontab has no way fo knowing if the entry for what to
> run is valid or not.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
