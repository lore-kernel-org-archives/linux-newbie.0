From: Chris Rose <offline@shaw.ca>
Subject: Postfix relaying and being selective...
Date: Fri, 24 Oct 2003 07:37:12 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F992B08.6040004@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

Right now, after much sturm, drang, and all that other stuff, i have 
successfully gotten Postfix to relay my mail outward to my isp's 
mailserver.  However...  I'd like to get it to stop relaying mail 
directed to "root", "postmaster" etc...  to "root@shaw.ca" and 
"postmaster@shaw.ca"

How can i configure postfix to relay mail of that kind - the sort w/o an 
"@" in it - to the local user or alias, while still preserving its 
ability to send the rest of my mail over the pipe to my ISP?  For my 
purposes, i don't have a domain, per se.  I'm behind a NAT router and i 
have a dynamic IP on the WAN side of the router and a static, 192. ip on 
the inside.  I don't know if that makes a difference at all.

-- 
Chris R.
=======
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
