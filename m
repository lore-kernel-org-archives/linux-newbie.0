From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: daisychain addresses
Date: Fri, 12 Mar 2004 10:43:13 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40518631.5020203@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,
In a daisychain network such as this:
fw/router------server------workstation1------workstation2 (these are 
descriptions, not real hostnames), how should the addresses be set up? 
At the moment, all the machines are on 192.168.0.0. Is this wrong? Each 
machine can ping its neighbour but no farther, except for 'server', 
which can connect to the Internet via 'fw/router'. But 'workstation1' 
cannot ping 'fw/server', even after doing 'route add fw/router gw server 
eth0'. Using numerical addresses makes no difference. All my /etc/hosts 
list every machine. Daisychaining does not seem to be very much covered 
in the documentation I've found. I'm sure I'm making a basic mistake 
(apart from being too stingy to invest in hubs or switches or whatever). 
Therefore, a basic (and very general) question: What is the correct way 
to address machines in this sort of topology?
TIA,
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
