From: Nicolas Patik <nicolas.patik@gmail.com>
Subject: how to route
Date: Fri, 24 Dec 2004 00:59:49 -0300
Message-ID: <7539d99f041223195924d905d3@mail.gmail.com>
Reply-To: Nicolas Patik <nicolas.patik@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have 2 linux boxes connected to a switch:

box1: 
eth0 192.168.0.200/255.255.255.0
eth1 public address from ISP dhcp

box2: 
eth0 192.168.0.35/255.255.255.0

box3:
eth0 192.168.1.3/255.255.255.0

I want box1 to act as a gateway to the internet 
(it is doing this now for box2), 
but also want to communicate from box2 to box3 through box1, 
and that box3 can use the internet through box1.

how can I do this?


TIA,

--Nicolas
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
