From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: automating a script with dhcp address changes
Date: Tue, 26 Sep 2006 12:03:45 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609261149300.1376-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I wanted to run a few tasks each time the IP address on my PC changed. The
PC connects to the network using DHCP and runs ubuntu (LTS, 2.6.15-26). 

I noticed that there was a directory called /etc/network/if-up.d that had
a couple of scripts in them. I was wondering if I could just leave my
script in that directory and expect it to get executed everytime DHCP
changes the machines IP?


Thanks,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
