From: Ray Olszewski <ray@comarre.com>
Subject: Re: fetchmail and smtp problem (was tuning iptables)
Date: Tue, 10 Dec 2002 12:10:37 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021210115320.020c5d00@celine>
References: <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212101943.gBAJhgW03033@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Comments below, interspersed.

At 02:43 PM 12/10/02 -0500, Haines Brown wrote:
>Here are some preliminary results on fetchmail.
>
>------------------
>When I originally ran netsat -l, I got:
>
>   Active Internet connections (only servers)
>
>     Proto Recv-Q Send-Q Local Address   Foreign Address   State
>     tcp        0      0 127.0.0.1:smtp      *:*           LISTEN
>
>But now for some reason it has changed to:
>     tcp        0      0 hartford-hwp.com:smtp *:*         LISTEN

This is *probably* a side effect of changing the entry in /etc/hosts . If 
you want to see it the old way, the command is probably "netstat -ln".

>Whatever the reason for the change, I gather this means something is
>listing on the smtp port (25).

Right. But we already knew that from before.

>--------------------
>
>Setting up /etc/mail/access. I have:
>
>         localhost.localdomain           RELAY
>         localhost                       RELAY
>         127.0.0.1                       RELAY You suggest inserting
>--------------------
>
>I also checked /etc/mail/local-host-names. It is empty by default.
>You suggest entering "mailserver.mydomain.com", but since my machine
>has neither a static IP address nor hame, I was not sure what to do. I
>instead just put in my hostname (hartford-hwp.com), figuring it would
>do no harm.
>
>         # local-host-names - include all aliases for your machine here.
>         localhost
>         localhost.localdomain
>         hartford-hwp.com
>
>--------------------
>
>Next, I ran netstat -lp
>
>       # netstat -lp
>         tcp     0    0 *:smtp  *:*    LISTEN      856/sendmail: accep
>
>Port 25 accepts messages from sendmail?

No. sendmail is the name of the program that is LISTENing on port 25. That 
part is good. And now it is listening on all IP addresses, not just 
localhost (that's why you have *:smtp instead of 127.0.0.1:smtp, as you did 
earlier).

>--------------------
>
>I started a telnet session, but didn't log in. Will do that, too, if
>useful.

When you telnet to a port other than the telnetd port, the concept of 
"logging in" does not carry over. See below for more.

>   # telnet localhost 25
>   Trying 127.0.0.1...
>   Connected to hartford-hwp.com (127.0.0.1).
>   Escape character is '^]'.
>   220 hartford-hwp.com ESMTP Sendmail 8.12.5/8.12.5; Tue, 10 Dec 2002
>         13:12:00 -0500

This is good; sendmail does respond on this address/port. You might see if 
it also responds to an attempt to deliver a message. Try entering this 
sequence of commands (until you get an error response; then tell us what it 
is):

         HELO localhost
         MAIL from: haines@localhost
         RCPT to: brownh@hartford-hwp.com
         DATA
         (any text, follow the instructions for ending)
         QUIT

If all of this works (assuming brownh@hartford-hwp.com is a vaild e-mail 
address for this machine; if not, pick one that is), then the smtp side of 
things is working and you need to concentrate on your fetchmail settings.

>-------------------
>I didn't know what might be useful from /etc/mail/sendmail.cf, but as
>I waited thinking about that, I saw that my fetchmail -k command
>actually carried through. It took about 20 seconds to start the first
>download. The next few messages took about 10 seconds each. Then a
>batch of about 8 downloaded normally (2-3 seconds for the batch), then
>slow again. Then fast again. The pattern was consistent for additional
>tries.
>
>The first messages was an undeliverable notive from when I tried to
>send myself a test message almost a week ago:
>
>  brownh@hartford-hwp.com... Deferred: hartford-hwp.com.: Network is 
> unreachable

This is not enough information to interpret. Who (what host) generated the 
"Network is unreachable" message? Your Linux box or the ISP's mail server? 
I'm guessing the second, and to interpret that, I need to know what else it 
said (since from here hartford-hwp.com is perfectly reachable).

>After five days, it was deleted from queue. The batch of test messages
>I sent myself (also 127.0.0.1, also localhost.localdomain) fell into a
>black hole.
>
>I don't know where to look for a fechmail log, but I ran fetchmail -v
>-v > /opt/tmp/-fetchmail.log. Because it was just one new message that
>(successfully) downloaded, I'll here venture to paste the entire log:

Now I'm confused again. Above, you talked about fetchmail downloading a 
dozen or so messages, but here you say "it was just one new message". 
Please be more clear.

>Oops. Left it on the wrong HD. Will have to retrieve it next time I
>boot the disk. But the message did not wave any red flags (but I may
>well not recognize one even if I saw it).




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
