From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: synchronising two machines
Date: 11 Apr 2003 10:04:45 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1050051885.3493.16.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi.

Can anyone suggest a reliable yet simple way of synchronising two
identical linux servers?

I have a server (let's call it X1) which is serving desktops out to
multiple clients using XDMCP. I then have a second server with identical
hardware (X2) which does the same job. The idea is that if people find
X1 is slow and busy they can use X2, and also if X1 fails then X2 is
still there.

I want to duplicate everything between the two machines except stuff
which has to be unique - network settings being the obvious. During
building, this is easy; I have built X1, and then connect the hard disk
from X2 into X1 and use dd to copy the image across. Then I put the disk
back in X2, boot up and change the network settings and hostname.

However, how do I keep them in sync after that? Ideally, I want to be
able to apply updates to only one of them (say X1) and have it
automatically propogate those changes to X2. 

rsync is a possible answer, I know, but I have two issues there: 
A. I want it to update everything _except_ a few selected files, and  
B. I need to run it as root, so to use rsync I'd have to open up rlogin
to root, which I'd rather not do if possible.

Anyone got any ideas about what I should look at?


Oh, as an aside I _don't_ want a cluster, and I'm not trying to create a
single "virtual server".

Thanks.

Paul.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
