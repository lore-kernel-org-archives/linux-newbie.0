From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Qmail SMTP issues
Date: Thu, 17 Oct 2002 16:59:47 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000501c27620$208e4160$64fea8c0@pkrausxp>
References: <5.1.0.14.1.20021017130340.0213fab0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021017130340.0213fab0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

I have corrected this issue. I was running it as a daemon but I had a
typo in one of my SMTP run script.

I know have qmail working and have a question I feel almost foolish
about asking.

If I send a message to a user on the server I have to send the address
like pdk@redhat-fax.localhost.localdomain.localhost for the message to
get through. I want to be able to send the message to
pdk@redhat-fax.com.  This machine is not on the internet yet so it is
just handling internal mail. Any advice would be appreciated.

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Ray Olszewski
Sent: Thursday, October 17, 2002 4:17 PM
To: Paul Kraus; linux-newbie@vger.kernel.org
Subject: Re: Qmail SMTP issues


1. Are you running qmail as a daemon or through inetd? If through inetd,

what does the actual line in /etc/inetd.conf look like?

2. When you attempt to telnet to port 25 on the machine and fail, does 
anything turn up in the server's logs? Either from qmail itself or from
any 
firewall you may have on the system (or, conceivably, from tcpd or an 
equivalent)?

3. When you say "kill the telnet process", do you really mean that you
need 
to use the kill command to terminate it? (That is, the CTRL-] "escape" 
command does not work, or does not let you do a local quit?)

4. How local is "locally"? Do you mean a telnet from the server itself, 
from another host on the same Ethernet, from a host that goes through a 
local router to reach the server, or something else? I'm fishing here
for 
the possibility that either a routing or a firewalling problem is 
interfering with mail transmission.

5. Given its seeming total inability to receive mail via SMTP, what do
you 
mean by "it appears to be working correctly"? (Its ability to be invoked
by 
a batch processor like qmail-inject has nothing to do with its
functioning 
as a daemon; with ANY MTA, sending and receiving mail have completely 
different requirements.)

At 04:01 PM 10/17/02 -0400, Paul Kraus wrote:
>I have installed qmail and it appears to be working correctly. I can 
>send messages using qmail-inject to accounts on the system. However the

>SMTP part does not seem to be working correctly. When I telnet (locally

>or remotely) to port 25 it hangs. It connects but then sits with no 
>greeting messages. When I try to issue SMTP commands it does not 
>respond. I am unusable to exit or quit and have to kill the telnet 
>process. Any ideas? Paul Kraus


--
-------------------------------------------"Never tell me the
odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------
-------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
