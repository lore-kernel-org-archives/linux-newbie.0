From: "Rajat  Jain, Noida" <rajatj@noida.hcltech.com>
Subject: RE: how to route
Date: Fri, 24 Dec 2004 10:13:10 +0530
Message-ID: <267988DEACEC5A4D86D5FCD780313FBB02D82C02@exch-03.noida.hcltech.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicolas Patik <nicolas.patik@gmail.com>, linux-newbie@vger.kernel.org


Hi,

I don't think box3 would be able to box1 or box2 currently. This is because
the IP address you've assigned to box3 is not on the same subnet as that of
box1 & box2. Box1 and box2 are right now on subnet 192.168.0.0. Where as
box3 is is not subnet 192.168.1.0. To connect PCs on different subnets you
need to have a router in between. 

The options you have:

1) Make the IP addresses of all three boxes on the same subnet by changing
box3's IP to 192.168.0.*, OR box1 & box2's IP to 192.168.1.*

2) Make subnet larget by making subnet mask = 255.255.0.0 or some thing.

-Rajat

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Nicolas Patik
Sent: Friday, December 24, 2004 9:30 AM
To: linux-newbie@vger.kernel.org
Subject: how to route

I have 2 linux boxes connected to a switch:

box1: 
eth0 192.168.0.200/255.255.255.0
eth1 public address from ISP dhcp

box2: 
eth0 192.168.0.35/255.255.255.0

box3:
eth0 192.168.1.3/255.255.255.0

I want box1 to act as a gateway to the internet (it is doing this now for
box2), but also want to communicate from box2 to box3 through box1, and that
box3 can use the internet through box1.

how can I do this?


TIA,

--Nicolas
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
