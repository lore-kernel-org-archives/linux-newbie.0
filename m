From: Peter <pfheiss@philonline.com>
Subject: Re: PPP Question
Date: Thu, 26 Sep 2002 10:12:01 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209260212.g8Q2C1901246@philonline.com>
References: <5.1.0.14.1.20020925082025.025f05e0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Wed, 25 Sep 2002 08:21:09 MST."
             <5.1.0.14.1.20020925082025.025f05e0@celine> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org


ray@comarre.com said:
> Curious. What does your man page for "ifup" say about where it looks
> for its default interfaces file? 

]$ pinfo ifup
Przemek's Info Viewer v0.5.8
Error: could not open info file, trying manual
Error: No manual page found either.

]$ locate ifup |more
/etc/sysconfig/network-scripts/ifup
/etc/sysconfig/network-scripts/ifup-aliases
/etc/sysconfig/network-scripts/ifup-ipv6
/etc/sysconfig/network-scripts/ifup-plip
/etc/sysconfig/network-scripts/ifup-plusb
/etc/sysconfig/network-scripts/ifup-post
/etc/sysconfig/network-scripts/ifup-ppp
/etc/sysconfig/network-scripts/ifup-routes
/etc/sysconfig/network-scripts/ifup-sit
/etc/sysconfig/network-scripts/ifup-sl
/etc/sysconfig/network-scripts/ifup-wireless
/etc/sysconfig/network-scripts/ifup-ippp
/etc/sysconfig/network-scripts/ifup-isdn
/etc/sysconfig/network-scripts/ifup-cipcb
/sbin/ifup

In /sbin/ifup the word interface does not appear in the script.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
