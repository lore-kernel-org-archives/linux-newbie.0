From: Jim Reimer <jdr@wa5rrh.us>
Subject: Sequence of events at boot
Date: Wed, 11 Oct 2006 21:56:42 -0500
Message-ID: <53876815734.20061011215642@wa5rrh.us>
Reply-To: Jim Reimer <jdr@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

As of today, my FC4 machine is not booting.  The last thing on the screen during boot is

Processing `etc/joe/jstarrc`...Done

jstar is the default editor on the system, and the "Processing" line on the screen follows
lm_sensors, automount, nifd, and mDNSResponder.  Also, curiously, it says twice that it's
processing the jstarrc file.

Can't find where jstarrc is run during boot, so I have no idea what should be happening
next.  I've looked at every config, init, and rc file and directory I can think of, and
I'm drawing a blank.

Where do I look?

-- 
-jdr-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
