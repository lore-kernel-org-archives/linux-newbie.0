From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: programs/daemons/PIDs using the network
Date: Fri, 12 Aug 2005 01:27:43 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I run icewm as a window manager and have the network status displayed on 
the task-bar. Sometimes I notice quite some activity on the network, 
without really knowing which process is responsible for that. I would like 
to determine the progam-name(s)/daemon(s) and the PID(s) that are involved 
actively in sending/receiving data on the network. 

I tried netstat with the -e, -p, -l and the -a flags, but could not locate 
the program that was actively using the network. What am I missing, what 
must I try? 


regards,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
