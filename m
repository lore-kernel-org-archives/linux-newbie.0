From: Chuck Gelm <nc8q@gelm.net>
Subject: PC speaker 'alert'
Date: Wed, 19 Feb 2003 17:56:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E540B98.190D9D8D@gelm.net>
References: <200212081837.LAA15273@cu.imt.net> <3DF44FE9.69FB5E4D@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Howdy, Y'all:

 I'm monitoring my /var/log/messages file and I'd
like to have the PC's speaker beep when there is a new
entry.  I am monitoring 'DENY'ed packets.  I am now
using 'cut' and 'grep' and 'tail' to show the last
11 denied packets.  How can I cause the PC speaker to
beep when the last 11 lines are different the the
previous 11 lines.

Here is what I am using now:

#!/bin/sh
#
grep DENY /var/log/messages > t
cut -f2 -d\= t > u
cut -f2 -d" " u > v
cut -f1 -d: v > w
tail -n 11 w > deny.txt
clear
echo ""
cat deny.txt
echo ""
chmod 777 deny.txt   ; v
chgrp users deny.txt ; so that my other workstations can see

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
