From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mailer Connections
Date: Sun, 11 Aug 2002 07:55:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020811073659.0209b7d0@celine>
References: <02080915532601.07686@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02080915532601.07686@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

Riley already discussed the basics in his reply. Perhaps I can say 
something more that is useful.

At 02:19 PM 8/11/02 +0800, Peter wrote:
>Hi,
>
>When I recently upgraded from RH7.1 to RH7.3 I got total keyboard lock-up
>with some programs.  In order to go on working I had to reinstall RH7.1.
>
>After that I found  a) that I could not send e-mail any more using my 
>mail
>                      program
>                      exmh nor using <mail> from the console. I have to 
> resort to either
>                      pine or kmail. This is the case using my ISP for my 
> e-mail address.
>
>                   b) that I could not send any mail at all using my 
> alternate 
> ISP 
>
>                       subscribed to with a pre-paid webcard.
>
>In case a) the message in  maillog was either ...stat= service not
>available.. or ...stat=Data format error. This one especially when sending to
>this list.

Peter, you have to stop reporting errors in the form of teensy fragments of 
what you see. Partial lines from a log file, lacking context or even the 
name of the program logging the error (eximh? mail? the actual MTA you 
run?), are indecipherable. Provide a complete listing of ALL log entries 
associated with a mail failure and we may be able to help. Also please 
mention which MTA you are using (either look for something listening on 
port 25 or find the smtp entry in /etc/inetd.conf, depending on which way 
your system is set up)  and which of the two problem MUAs is involved in 
the actual example.

>In case b) the message popping up on the screen is "sorry that domain isn't
>allowed to be relayed thru this MTA".

This is anti-relaying software in operation, either at the ISP or on your 
system. When you try these connections, what From: address are you using 
(the FQN part)? One of two things is blocking you:

         1. You *have* changed the From: address to one appropriate to your 
ISP, but you haven't told your on-host MTA that it should relay mail 
ostensibly from that domain. If this is it, how you fix it depends on which 
MTA you run.

         2. You *have not* changed the From: address to one appropriate to 
your ISP, and its MTA is unwilling to relay mail from your (inappropriate) 
domain. If this is it, you probably have to change the address, then deal 
with any type-1 problem that arises.

Without more details (including what "popping up on the screen" exactly 
describes), I can't know which end the problem is at. Tell us the ISP 
involved, what MTA you are running, what program creates the "pop up" 
message you see, and whether you are changing the FQN of your mail to match 
the alternate ISP. Also, when you switch ISPs, are you even still using the 
on-host MTA, or are you using an e-mail client that connects directly to 
the ISP's MTA (e.g., Netscape)?


>How do I revert back that I can mail again with any mail program especially
>exmh and with any ISP?

To "revert back", reinstall and do whatever you did back when an install 
worked. This is probably the wrong approach, though. You want to (a) 
understand why the problem occurred and (b) fix it, so that next yime you 
upgrade, you will be able to carry the fix forward (because you understand 
the requirements of your system).


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
