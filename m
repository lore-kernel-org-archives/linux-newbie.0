From: shentino <shentino@gmail.com>
Subject: What makes a good filesystem?
Date: Mon, 01 Jun 2009 12:15:34 -0700
Message-ID: <1243883734.3835.10.camel@avalar>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:content-type
         :date:message-id:mime-version:x-mailer:content-transfer-encoding;
        bh=X8S38G1TQxar/EIaHVyApAYgt60oiSXY/a6/b+wHOQY=;
        b=dT94TwwSxAu7u7lu4tsS0wvDR0n+7e/oaidjqJIn37OXieA0TkuoOLfee9JRtHMglZ
         9K3k/6qEEZMwr3bgGOIyAMj9/0+qx926ix6bgxIBi8Q1/qeWFFm3QINRlVG2P7psMJWk
         QIIX+RgO8vRCntS2/xJcWtT5akE4bRCUQP+p8=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I've got a vague itch to write a file system, for an academic exercise
if nothing else, and I'm curious about what good filesystem design is
all about.  Particularly any properties that a filesystem design
must have and/or should have to pass muster with the fs guys, and doubly
particular how important these properties are.

Besides the usual preemption safety/locking/smp awareness and all that
stuff that's a given for kernel code in general, what are good
principles to code for when you're designing a filesystem?

In particular what I'm curious about includes but is by no means limited
to the following:
1.  POSIX compliance (given, probably trivial to research)
2.  Integrity in the presence of catastrophic interruptions (crashes,
kernel panics, power outages, random reboots) (I'm guessing a Good
Thing)
3.  Performance (given)
4.  Robustness in the presence of flaky media (unsure how mandatory or
required this is)
5.  Anything I missed

I'm intrigued by btrfs and tux3, and also a tad envious of the brains
behind them.


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
