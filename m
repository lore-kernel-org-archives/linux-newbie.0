From: Ray Olszewski <ray@comarre.com>
Subject: Re: I killed user's x server
Date: Thu, 21 Nov 2002 10:48:10 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021121103403.02116350@celine>
References: <200211202236.gAKMaIK05653@hartford-hwp.com>
 <200211202236.gAKMaIK05653@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211211823.gALIN9S03826@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:23 PM 11/21/02 -0500, Haines Brown wrote:
>User still unable to start X. Root can do it, but not user. When user
>tries, it reports not being able to load pex5 or xie. These modeles are
>present and I've run ldconfig.

A permissions problem, perhaps. What mode are they?

>What's new is that I created a new user account, and found that it was
>able to start X. However, after rebooting, it suffers the same
>problem.

This is truly puzzling. In what ways does your boot/init process change 
user accounts? Really, I don't even know what to ask about here in the way 
of clarifying info.

>I new also see the error message that not only doe pex5 and xie fail
>to load. but the machine could not establish any listening sockets.

It's almost surely referring here to Unix sockets, not TCP sockets. On my 
system, X listens on these Unix sockets --

Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node Path
unix  2      [ ACC ]     STREAM     LISTENING     282    /tmp/.font-unix/fs7100
unix  2      [ ACC ]     STREAM     LISTENING     427    /tmp/.X11-unix/X0
unix  2      [ ACC 
]     STREAM     LISTENING     450    /tmp/ssh-XXw994Bf/agent

The /etc/services entry below is irrelevant. Check "netstat -l" to see if 
your system has any Unix sockets open (try it when root is running X). This 
could be a permissions problem with /tmp or one of the subdirectories X 
uses there.

It is almost surely the socket failure, not the module failures, that cause 
X not to start. So concentrate on troubleshooting this part first.

One final, long-shot thought ... how full is /tmp? It's just barely 
possible that it is so full (space or inodes) that users cannot create 
sockets but root can. If (as is often the case) you have /tmp on a separate 
filesystem (partition), the chances of this problem occurring in isolation 
are greater than if /tmp is part of a larger filesystem.

>In /etc/services I have: xdmcp as port 177
>grep xdmcp /etc/services
>returns 177/tcp and 177/udp
>
>I don't know how to debug the X server other than this.

If these guesses don't help, you need to let us look at complete log output 
from a failure -AND- the corresponding log of a success.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
