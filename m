From: Suriya Narayanan M S <mssnlayam@cs.annauniv.edu>
Subject: Syslog - doubt
Date: Wed, 5 Jun 2002 21:02:33 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206051714.g55HE8u18108@cs.annauniv.edu>
Reply-To: mssnlayam@cs.annauniv.edu
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,
	The following program writes 2 messages to
syslog
/********** Begin code ***********/
#include <syslog.h>
int main()
{
        openlog("Test of syslog",0,0);
        syslog(LOG_EMERG,"Hello World\n");
        syslog(LOG_EMERG,"Good Bye World\n");
        closelog();
        return 0;
}
/**********End code ***************/

If someone executes this program repeatedly
of from a loop, syslog would become too large.
Is something wrong?  Can access to syslog
be restrcted?

Bye,
Suriya Narayanan M S
-- 
Guru Brahma Gurur Vishnu
Gurur Dhevo Maheshwaraha
Gurur Saakshaath Parabramha
Thasmai Shree Gurave Namaha

Public key at www.keyserver.net
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
