From: "Gosselin, Mark" <gosselinm@netscout.com>
Subject: Help configuring Redhat for rsh
Date: Thu, 16 Oct 2003 12:46:13 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <6CE6A442029B3347890ED9FCA94FAE07148910@nsxmail.netscout.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
content-class: urn:content-classes:message
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

As the list indicates, I'm a newbie to Linux, but do know other versions of Unix. 
My problem is pretty simple (or at least it appears so). I'm required to build a
number of different platforms of our product. I do it with a cron job that rsh'es into
each type of system (Sun, HP, AIX, and Linux) and runs my builds... 

As this is done after hours, I'd like for it to require no input from me. However, my 
attempts to rsh from a Sun box to my RedHat box always prompts for a password. 
The hosts are set in .rhosts, I've even added them in hosts.equiv....

How can I set up a user so that they can rsh to my RedHat???

Thanks,
Mark Gosselin
NetScout Systems
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
