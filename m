From: Hal MacArgle <haltec@kvinet.com>
Subject: NFS and umount problem again??
Date: Wed, 10 Sep 2003 16:18:08 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030910161808.B255@lnx2.w8mch.ampr.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: With Slackware8.0/kernel 2.4.18 I had a problem umounting
the servers Zip drive - always "busy", having to reboot.. This was
solved by the exportfs -u flag - but now that I've changed most
machines to Slackware9.0/kernel 2.4.20; I find that doesn't work and
I have to kill -9 the ps <nfsd>, which means a reboot to run the
loading script again.

Don't know why this should happen with Slack9/2.4.20 so was wondering
if anyone else ran into this with a possible fix or explanation as to
what I'm doing wrong, etc?

TIA and Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
