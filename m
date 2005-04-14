From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 09:22:06 -0700
Message-ID: <5.1.0.14.1.20050414091847.01f60d70@celine>
References: <200504142239.24316.wheds8@ms66.hinet.net>
 <200504142239.24316.wheds8@ms66.hinet.net> <200504141040.02011.eric@cisu.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504141040.02011.eric@cisu.net>
References: <200504142239.24316.wheds8@ms66.hinet.net>
 <200504142239.24316.wheds8@ms66.hinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 10:40 AM 4/14/2005 -0500, Eric Bambach wrote:
>Ssh is the de facto standard for remote administration but It lacks the
>ability to give you a GUI interface.
[...]

This not *quite* correct. ssh can be used to tunnel another service, one 
that provides a GUI (for example, VNC, or even remote X sessions directly 
... or I suppose even Webmin, if it does not already offer an https option 
for encryption). The details can be found in the ssh and sshd man pages.

  

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
