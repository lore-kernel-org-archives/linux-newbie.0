From: chuck gelm net <chuck@gelm.net>
Subject: setgid: Operation not permitted
Date: Mon, 29 Dec 2003 07:51:03 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF02337.D6169DC9@gelm.net>
References: <200312270820.hBR8Ked01366@skyinet.net> <3FEE5A53.4010401@sancharnet.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Howdy:

 I broke something on my file server and now I can no longer
'su' (root) remotely.  When I try I get this error:

setgid: Operation not permitted

 Often I logged on remotely and issued

su
cd /hde3 		
chmod -R 775 *
chgrp -R users

So that I could 'rw' the files in that directory
from any of my Windows workstations.
OBTW, ("/hde3" is /dev/hde3).

 What might I have done and how do I fix it?

 The system is an old amd-k6-266 running
Slackware-8.0 kernel 2.4.19 configured as a file server
using nfs and samba.

Happy holidays and new year, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
