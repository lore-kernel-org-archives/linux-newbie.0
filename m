From: prussian7@netzero.net
Subject: Printing to W98 from SUSE 8.1
Date: Fri, 04 Apr 2003 20:23:06 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E8E3E0A.C83F22F@netzero.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

Problem:

I am unable to print to the printer shared on my windows 98 computer
(panther 192.168.1.2), from my SUSE 8.1 (192.168.1.254) running SAMBA
2.2.5
When I type in:

smbclinent //panther/lp -P

I get:

added interface ip=192.168.1.254 bcast=192.168.1.255 nmask=255.255.255.0

Got a positive name query response from 192.168.1.2 (192.168.1.2)
Password:

then no matter what password I try I get:

tree connect failed:  ERRSRV  - ERRinvertname (Invalid network name in
tree connect.)

I don't know if this is related but I when I click on the LAN browser on
the Konqueror  I get an error stating " protocol not supported"




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
