From: Chris Rose <offline@shaw.ca>
Subject: Apache user?
Date: Thu, 03 Oct 2002 23:30:07 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c26b67$1a178df0$4b01a8c0@offline>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Linux-Newbie' <linux-newbie@vger.kernel.org>

In my old system, i think Apache was configured to run as root, but i'm
not sure.  Either way, though, all the files in my httpdocs directory
are root:root owned, mostly chmod 666:-rw-rw-rw-

In my Apache 2.0 httpd.conf it's set to user:group apache:apache.
Should i chown all the files?

Chris R.
-----
Lumen Redundas
"To Cast The Light Of Knowledge On The Already Well-Known"

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
