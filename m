From: Jim Reimer <wa5rrh@arrl.net>
Subject: samba problem
Date: Sun, 21 Jul 2002 08:17:46 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207211315.g6LDFtOc028945@franklin.icok.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm having trouble geting samba going.  I can see the Linux
machine (pyro2) from a windows(95) machine (it shows up in
windows explorer) but when I try to connect from windows,
I get this error message:

\\pyro2 is not accessible.  The specified computer did not
receive your request.  Try again later.

And when I check from another Linux machine for available
shares, I get this:

[jdr@pyro jdr]$ /usr/bin/smbclient -L pyro2
added interface ip=192.168.0.5 bcast=192.168.0.255 nmask=255.255.255.0
Got a positive name query response from 192.168.0.9 ( 192.168.0.9 )
session request to PYRO2 failed (Not listening for calling name)
Got a positive name query response from 192.168.0.9 ( 192.168.0.9 )
session request to *SMBSERVER failed (Not listening for calling name)

What do I need to do?

Thanks,
-jdr-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
