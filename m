From: Petre Bandac <g38@rdsbv.ro>
Subject: netdate vs. ntpdate
Date: Mon, 17 Jun 2002 00:40:29 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206162140.g5GLeVu04345@g38.rdsbv.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

quoting man netdate:

 Netdate  takes  a list of names of Internet hosts as argu-
       ments, selects the one which supplies the best  time,  and
       sets the system time accordingly.  The invoker must be the
       super-user for the time to be set.

while ntpdate doesn't have a man page (or at least on my box :-))

question is if I want to keep my box's date accurate, which command should I 
use ? and what's the difference between them ?

thanks,

petre


-- 
 12:38am  up 23 min,  1 user,  load average: 0.09, 0.03, 0.02
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
