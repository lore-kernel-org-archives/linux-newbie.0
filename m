From: joy <gracecott@sancharnet.in>
Subject: configuring cyrus
Date: Wed, 30 Jun 2004 17:30:05 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40E2AB45.8000303@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi everyone,

I was trying(and trying and...) to set up cyrus but I seem to have run 
into a brick wall on this problem.
 
I installed the cyrus21 package on my sid system and debian , with it's 
own way  of doing things, installed
the daemon programs (imapd , lmtpd , pop3d....) in /usr/lib/cyrus/bin.
When I start the system, however, only imapd used to start.
in cyrus.conf the place where the services are to be started, I put the 
full path name of the daemons
in hope that they would start.
However, only notifyd started up along with imapd.(it is possible that 
notifyd started in the first place,
and I just failed to notice it. sorry for the oversight :-( )
also, when I telnet to imapd, the number of supported encryption or 
authentication methods
are  none. the daemon even comments about this in the log.
Has this package just been done up badly and it is better I do a install 
from source,
or am I missing something here?

Thanx in advance,
Joy.M.M
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
