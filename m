From: "Lee Chin" <leechin@mail.com>
Subject: Getting the MAC address of a client
Date: Thu, 10 Oct 2002 12:56:05 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021010175605.19028.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca
Cc: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

Hello,
When my server application accepts a client socket connection, what is the easiest way to obtain the MAC address of the peer?  I tried listing the ARP table but I did not see an entry for the IP address and MAC address of the client.
I want to avoid having to ping the client to get the ARP table populated

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

"Free price comparison tool gives you the best prices and cash back!"
http://www.bestbuyfinder.com/download.htm

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
