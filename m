From: Chuck Gelm <nc8q@gelm.net>
Subject: crontab syntax ?
Date: Sat, 07 Jun 2003 15:50:25 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EE24201.DA793DC8@gelm.net>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200306042101.56986.pa3gcu@zeelandnet.nl> <20030605093027.A233@lnx2.w8mch.ampr.org> <200306052108.36121.pa3gcu@zeelandnet.nl> <20030607104727.A355@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Howdy, y'all:

 I want to run a script monthly.
(update my dynamic DNS account)
I (as 'root') ran 'crontab -e' and added this line:

5 6 7 * date /usr/local/src/ez/dyndns.conf >> /share/dyndnsup.txt 2>>
/share/dyndnsup.txt

This seems to be the syntax indicated by 'man crontab'.
If I understand the syntax of crontab, the above line will 
every 7th of the month, at 06:05, execute my dyndns.conf file
and send standard and error messages to file /share/dyndnsup.txt.

 Is this correct syntax?
 Is there a syntax checker for crontab like testparm for samba?

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
