From: Chris Rose <offline@shaw.ca>
Subject: Postfix as a relay
Date: Thu, 31 Jul 2003 09:18:23 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F29333F.7090408@shaw.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>

My setup is currently to have postfix relay all messages through my 
isp's smtp server, and it's doing so only from local IPs.  This poses 
two problems:  One, i'd like to be able to access my smtp server from 
outside the local network, so i need to know how to secure it.  Two, i 
would like to have certain mail addresses - specifically, messages 
addressed to local users - more specifically, root and postmaster (for 
logging notifications) - - not be relayed.  Can someone help me with 
this?  I admit, my configuration is more luck than anything, and i'm 
really nervous about altering it, since the current setup is A) working 
and B) kind of important, given that all my email comes in to this 
server and is sent to my local imap server.  So postfix being dead could 
really toast my personal mail system.

Anyone up to the task?

-- 
Chris R.
=======
Listening to the sound of silence
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
