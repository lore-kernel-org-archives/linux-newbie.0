From: nksahita@softhome.net
Subject: How to make Apache webserver accessible from outside?
Date: Mon, 16 Jun 2003 22:16:53 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <courier.3EEE9635.00007BB6@softhome.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi, 

I installed RH9 on my home computer which has broadband connection. 

I got account with dyndns.org which allows me to get a domain name (e.g. 
http://xyz.dyndns.org) that points to the IP address allocated by my ISP. 

When I try to access this webserver from my home PC - http://xyz.dyndns.org, 
it works fine - I can see the home page that I have setup on my RH9 Apache 
server. 

However if someone from outside (my friend for e.g.), tries to access 
http://xyz.dyndns.org, he can't do it.  However, if my friend tries to ping 
the IP address or xyz.dyndns.org, he is able to do it. 

I have confirmed with my ISP that they don't block any ports. 

Are there any settings in RH9 that I need to turn on so that it can accept 
incoming web traffic from outside? 

Thanks for any help / pointer in advance. 

Regards.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
