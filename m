From: dave <dave@dpomeroy.com>
Subject: security
Date: Tue, 17 Feb 2004 09:55:34 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40325596.6090805@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

I've been runing Mandrake for a couple of years and I'm still having 
problems with groups. 
This is the procedure for making a group and sharing a subdirectory that 
I use.  Can someone tell me where I'm screwing up?  Thanks in advance

Make a folder:   mkdir /home/everyone
make group: groupadd everyone
add users gpasswd -a dave everyone
add users gpasswd -a laura everyone
change the group for the folder chgrp -R everyone /home/everyone
add write for group everyone chmod g+r /home/everyone
When I'm done with this I still can not make a folder in /home/everyone 
logged on as dave.

again thanks for your help

-- 
Dave Pomeroy K7DNP South Eastern Washington


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
