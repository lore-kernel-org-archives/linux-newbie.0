From: _z33 <timid.Gentoo@gmail.com>
Subject: Re: programs/daemons/PIDs using the network
Date: Sat, 13 Aug 2005 09:18:44 +0530
Message-ID: <ddjqbf$78s$1@sea.gmane.org>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> I run icewm as a window manager and have the network status displayed on 
> the task-bar. Sometimes I notice quite some activity on the network, 
> without really knowing which process is responsible for that. I would like 
> to determine the progam-name(s)/daemon(s) and the PID(s) that are involved 
> actively in sending/receiving data on the network. 

   Isn't that due to "arp" packets flowing in the network? Try running 
ethereal (as 'root') and then capture the packets for further information.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
