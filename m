From: Eng Se-Hsieng <g0202512@nus.edu.sg>
Subject: SIOCGIFCONF and ifr_bandwidth
Date: 30 Jun 2003 21:30:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1057037447.1564.14.camel@nusnet-165-146.dynip.nus.edu.sg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear all,

Could someone please tell me why when I use 

ioctl(fd, SIOCGIFCONF, (char *)cf);

All the addresses returned have a link bandwidth
(ifrequest->ifr_bandwidth) of 2?

What does this 2 mean and why is the same for all the interfaces (eth,
ppp, lo)?

Thank you.

Regards,

Se-Hsieng




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
