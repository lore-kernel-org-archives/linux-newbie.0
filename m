From: Ray Olszewski <ray@comarre.com>
Subject: Re: Qmail SMTP issues
Date: Thu, 17 Oct 2002 13:16:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021017130340.0213fab0@celine>
References: <000001c27617$f7b19150$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c27617$f7b19150$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

1. Are you running qmail as a daemon or through inetd? If through inetd, 
what does the actual line in /etc/inetd.conf look like?

2. When you attempt to telnet to port 25 on the machine and fail, does 
anything turn up in the server's logs? Either from qmail itself or from any 
firewall you may have on the system (or, conceivably, from tcpd or an 
equivalent)?

3. When you say "kill the telnet process", do you really mean that you need 
to use the kill command to terminate it? (That is, the CTRL-] "escape" 
command does not work, or does not let you do a local quit?)

4. How local is "locally"? Do you mean a telnet from the server itself, 
from another host on the same Ethernet, from a host that goes through a 
local router to reach the server, or something else? I'm fishing here for 
the possibility that either a routing or a firewalling problem is 
interfering with mail transmission.

5. Given its seeming total inability to receive mail via SMTP, what do you 
mean by "it appears to be working correctly"? (Its ability to be invoked by 
a batch processor like qmail-inject has nothing to do with its functioning 
as a daemon; with ANY MTA, sending and receiving mail have completely 
different requirements.)

At 04:01 PM 10/17/02 -0400, Paul Kraus wrote:
>I have installed qmail and it appears to be working correctly. I can
>send messages using qmail-inject to accounts on the system. However the
>SMTP part does not seem to be working correctly. When I telnet (locally
>or remotely) to port 25 it hangs. It connects but then sits with no
>greeting messages. When I try to issue SMTP commands it does not
>respond. I am unusable to exit or quit and have to kill the telnet
>process. Any ideas?
>Paul Kraus


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
