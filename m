From: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Subject: http connection migration between two servers
Date: Sun, 21 Mar 2004 21:27:09 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040322052709.49362.qmail@web60603.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

Hi users,
  
  I have a cluster of web servers.
  Each server contains only a part of the whole web  
  content.
  All have a primary Virtual IP address(same for all)
and 
  secondary IP addresses for comunication within
cluster.
  Clients make requests on the VIP address.
  Each server in cluster has to make content aware
  dispatching of requests.
  In order to save time, I want that the HTTP
connection
  established with the first server should be migrated
  to the server which can serve the request.
  
  Iam using apache 1.3.29 with mod_backhand for
communication wihtin cluster.
  All the servers use Red Hat linux 2.4.18.

 Please guide me how I can achieve this. 
 
 Thanks,
 ravikumar
  
  

__________________________________
Do you Yahoo!?
Yahoo! Finance Tax Center - File online. File on time.
http://taxes.yahoo.com/filing.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
