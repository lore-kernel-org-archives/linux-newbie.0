From: Ray Olszewski <ray@comarre.com>
Subject: Re: tuning iptables
Date: Sun, 08 Dec 2002 10:12:59 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021208095040.020abec0@celine>
References: <200212081255.gB8CthN04503@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212081255.gB8CthN04503@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Preliminary comment: whatever your problem is, it has nothing to do with 
your firewall (at least with the modified, open version you are now testing 
with). So I'm deleting that part of your message and focusing on the 
fetchmail part.

At 07:55 AM 12/8/02 -0500, Haines Brown wrote:
[...]
>First, fetchmail is able to get non-tcpip information from the mail
>server:
>
>   # adsl-start
>   . Connected!
>
>   # fetchmail --check
>   21 messages for brownh@hartford-hwp.com at pop.registeredsite.com
>         (115279 octets).

Calling this stuff "non-tcpip" indicates some confusion. I'm not sure 
myself whether fetchmail is using tcp ot udp to get this information, but 
it is using one of them, probably tcp (and it is certainly using ip).

>Next, I wanted to log the fetchmail session. However, my attempt to
>generate a log did not work for some reason I lacked time to figure
>out ("tmp" directory is accessible).
>   $ adsl-start
>   . Connected!
>   $ fetchmail -v -v > /opt/tmp/-fetchmail.log.1
>   bash: /opt/tmp/-fetchmail.log.1: Permission denied

What userid are you? What is the output of
         ls -l / | grep opt
         ls -l /opt | grep tmp
         ls -l /opt/tmp/-fetchmail.log.1

Without that info, no one can figure out the problem,  no matter how much 
time he or she has. "accessible" is not a well-defined term.

>So instead I just logged the xterm:
[...]
>   About to rewrite Sender: linux-usb-users-admin@lists.sourceforge.net
>   Rewritten version is Sender:
>           linux-usb-users-admin@lists.sourceforge.net
>
>Now, at this point, the process stopped dead. After that last
>statement, just nothing until eventually I killed the process. Based
>on comparison with my presently working system, this report so far
>appears to be OK. What should come up next would be such lines as:
>
>   fetchmail: SMTP< 220 hartford-hwp.com ESMTP Sendmail 8.11.6/8.11.6;
>              Sun, 8 Dec 2002 07:40:26 -0500
>   fetchmail: SMTP> EHLO localhost
>   fetchmail: SMTP< 250-hartford-hwp.com Hello hartford-hwp.com
>              [127.0.0.1], pleased to meet you
>   fetchmail: SMTP< 250-ENHANCEDSTATUSCODES
>   ...
>
>Does this mean that SMTP is unable to set up its protocol for
>tranferring tcp packegs back to my mahcine?

No. It means that fetchmail cannot open a connection to the smtp server on 
your machine.

At this point, since the problem is with fetchmail and your smtp server, 
not with your firewall, someone who uses fetchmail regularly should step in 
here to give you focused advice.

My general advice is to stop looking at ipchains and focus on the local 
configuration of fetchmail and whatever smtp server you have (sendmail, 
exim, postfix, or something else ... evidently your old, working system 
uses sendmail). The practical approach I'd advise is checking how your 
working system runs sendmail ... first verify that something is listening 
on port 25 (with "netstat -l"), then track down what that something is 
(either sendmail itself or inetd on its behalf). Then set up your new 
system so it works the same way as the old one did.

Just to be clear -- this problem has NOTHING WHATSOEVER to do with 
ipchains, at least not when the INPUT chain has only an ACCEPT policy 
running. The only way ipchains *could* affect this is if you had rules that 
interfered with traffic on the "lo" interface.
[...]


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
