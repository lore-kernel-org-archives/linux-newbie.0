From: Peter <pfheiss@philonline.com>
Subject: Re: need to switch NICs... process?
Date: Thu, 1 May 2003 09:08:10 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305010908.10987.pfheiss@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

kudzu has worked well for me up RH7.3. It's also found in RH8

man kudzu

 kudzu detects and configures new and/or  changed  hardware
       on  a  system.   When  started,  kudzu detects the current
       hardware, and checks  it  against  a  database  stored  in
       /etc/sysconfig/hwconf,  if  one exists. It then determines
       if any hardware has been added or removed from the system.
       If so, it gives the users the opportunity to configure any
       added hardware, and unconfigure any removed  hardware.  It
       then updates the database in /etc/sysconfig/hwconf.

Regards
-- 
Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
