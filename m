From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 13:23:09 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211211823.gALIN9S03826@hartford-hwp.com>
References: <200211202236.gAKMaIK05653@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200211202236.gAKMaIK05653@hartford-hwp.com> (message from Haines
	Brown on Wed, 20 Nov 2002 17:36:18 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: linux-newbie@hartford-hwp.com

User still unable to start X. Root can do it, but not user. When user
tries, it reports not being able to load pex5 or xie. These modeles are
present and I've run ldconfig.

What's new is that I created a new user account, and found that it was
able to start X. However, after rebooting, it suffers the same
problem.

I new also see the error message that not only doe pex5 and xie fail
to load. but the machine could not establish any listening sockets.

In /etc/services I have: xdmcp as port 177
grep xdmcp /etc/services
returns 177/tcp and 177/udp

I don't know how to debug the X server other than this. 

Haines Brown 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
