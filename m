From: 1stFlight <1stflight@ameritech.net>
Subject: Securing my box
Date: Fri, 15 Nov 2002 06:19:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211150619.49278.1stflight@ameritech.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux newbie <linux-newbie@vger.kernel.org>

I recently had a friend port scan me as a test of my ip_tables based firewall
And like I wanted he discovered there were no ports open. However if I do a 
"netstat -a | grep LISTEN" I see

tcp        0      0 localhost.localdom:1024 *:*                     LISTEN
tcp        0      0 *:printer               *:*                     LISTEN
tcp        0      0 *:sunrpc                *:*                     LISTEN
tcp        0      0 *:x11                   *:*                     LISTEN
tcp        0      0 *:ssh                   *:*                     LISTEN


What's going on here? Did I mess up my config? Thanks!

													Darryl
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
