From: "Eckhardt, Rodolpho H. O." <reckhardt@mandic.com.br>
Subject: Re: iptables & a dhcpd question
Date: Thu, 27 Feb 2003 17:00:18 -0300 (BRT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <61644.200.136.52.249.1046376018.squirrel@www.mandic.com.br>
References: <004101c2de99$eef21400$4800a8c0@neptune>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004101c2de99$eef21400$4800a8c0@neptune>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: paul@mnwebhost.net
Cc: linux-newbie@vger.kernel.org

I don't know if this is what you are asking but.

I've never worked with Slackware, but try this:

/etc/(PATH TO rc.firewall)/rc.firewall

and when they say dhcpd stop, you have to add the path to it in the front:

/etc/init.d/dhcpd stop (if /etc/init.d is the path)

I hope this works,

Rodolpho

-- 
Rodolpho H. O. Eckhardt
reckhardt@mandic.com.br
Cel: 11 9126-9107


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
