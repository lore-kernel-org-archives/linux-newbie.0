From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: detecting eth0 with fedora core 2
Date: Tue, 15 Feb 2005 13:40:51 -0500 (EST)
Message-ID: <Pine.LNX.4.44.0502151328480.17383-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

We got a new machine at work with an intel P4@2.8GHz from Dell [model:  
Optiplex GX280] with an Intel broadcom(r) NIC. I installed fedora core 2
by replacing the windows partition, which installed painlessly. 

However, I am unable to "see" eth0 via a /sbin/ifconfig eth0 (I get a
mesasage saying eth0 not found). I could'nt find any info in
/var/log/messages indicating whether the device was detected or not. How
can I try to detect this device and obtain its MAC-address?


Thanks,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
