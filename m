From: Chris Rose <offline@shaw.ca>
Subject: Postfix as a relay - still get root's mail?
Date: Fri, 05 Sep 2003 12:04:12 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F58D01C.5030604@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

How can i configure postfix, having been set up with the

relahost=my.isp.mailserver.com
mydomain=isp.com
myorigin=$mydomain

settings to still send mail sent to root (ie:  logwatches etc...) to the 
local mailbox?

-- 
Chris R.
=======
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
