From: Petre Bandac <g38@rdsbv.ro>
Subject: mac address change on an eth alias
Date: Tue, 17 Dec 2002 22:07:22 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212172207.22480.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

root@k:~# ifconfig eth0:1 123.123.123.123 netmask 255.255.255.0 hw ether 
00:E0:7D:02:C6:0C
SIOCSIFHWADDR: Device or resource busy
root@k:~#

am I trying to do something impossible or is it only my NIC (Realtek 8139) 
that can't do it ?

I want to have 2 ip's on the same interface - but with 2 different macs ... 
why? because this is my testing server and, among others (dhcp, bind, 
sendmail/postfix, asterisk, etc) I want to actually see how a mac address can 
be changed ... if it's possible

thank you for you patience,

petre


-- 
 22:01:49 up  5:31,  1 user,  load average: 0.04, 0.11, 0.14

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
