From: Bob Swift <powerstation@shaw.ca>
Subject: Re: Running fetchmail in daemon mode?
Date: Fri, 25 Apr 2003 09:04:08 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304250904.08033.powerstation@shaw.ca>
References: <009101c30aa5$867d3520$4b01a8c0@t9397.tjem.com>
 <5.1.1.6.0.20030425093215.01f6c380@interzone.anexia.co.uk>
Reply-To: powerstation@shaw.ca
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.1.6.0.20030425093215.01f6c380@interzone.anexia.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

On Friday 25 April 2003 02:34, Carl wrote:

> I should add that the hanging problem is normally caused by an over worked
> pop3 server. The ISP in question has seen it's pop3 server service drop
> dramatically and it gives out lots of auth fails - server too busy
> messages.

And I should mention that even though I haven't run in to the problem in any 
significant fashion yet, your point is well taken and will serve to make the 
process just a little bit more "bulletproof".  It is definitely on my "to do" 
list now, just not quite at the top.  My available Linux time at the moment 
is pretty much consumed with confirming system security and putting processes 
in place with an aim to maintaining that security (reviewing all firewall 
settings, doing some portscan testing, etc.)

I'm currently looking at alternatives to Samba for being able to access files 
on the Windows machines.  Using ssh and sftp works well for getting to the 
files on the Linux boxes, but I'm still using Samba to get to the Windows 
machines' files (and some printers).
-- 
Bob Swift

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
