From: Ray Olszewski <ray@comarre.com>
Subject: Re: need to switch NICs... process?
Date: Wed, 30 Apr 2003 11:46:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030430114148.01f79ad8@celine>
References: <5.1.0.14.1.20030430121655.02d2bb90@pop.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030430121655.02d2bb90@pop.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:18 PM 4/30/2003 -0600, James Ferris wrote:
>Hello list,
>Is there a 'best process' for changing out a NIC?
>I would be going from a dlink 528 (10bT) to a dlink 530 (100bTX).


I'm not sure what you are looking for in the way of a "process" (never mind 
the "best" part). Usually, all I do is halt, power down, open the case, 
remove the old NIC, insert the new NIC, close the case, and reboot. When 
the system boots/inits, I log in as root and make any changes to NIC 
modules that are needed to make the new NIC work (this can involve another 
reboot, but it usually does not ... just rmmod the old module and modprobe 
the new one, then restart networking. After this works (so I know I have 
the right module), I edit /etc/modules ... you do whatever method your 
distro uses (this is the Debian system) ... so the new required module 
loads next time the system reboots.

I guess this is a process, but it all seems obvious to me. Is there 
something I am missing about yor question? If so, please clarify it and 
I'll try to be as helpful as I can.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
