From: beolach@juno.com
Subject: Public & private IP addresses via IP Aliasing?
Date: Fri, 19 Sep 2003 01:22:25 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030918.182332.16221.402979@webmail11.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


On my home network, I am currently using IP-masquerading (aka NAT)
on my linux gateway to provide internet access for the local net.
This has been working fine in general, but I have some problems
with internet multiplayer in certain games that I believe are due
to the IP-masqing.  My ISP provides public addresses via DHCP, but
I prefer having static addresses on the local net.  I was wondering
if I could use both public & private addresses via IP Aliasing.

Would this work?

         Internet
             |
             |
Gateway |- eth0 public dynamic address
        |- eth1:0 bridged with eth0
        |- eth1:1 private static address
              |
Local Net |- eth0:0 public dynamic address
          |- eth0:1 private static address


Thanks in advance,
Conway S. Smith

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
