From: Ray Olszewski <ray@comarre.com>
Subject: Re: smtp_auth using home server
Date: Thu, 28 Nov 2002 09:39:27 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021128082154.020c7050@celine>
References: <20021128092136.GA9631@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021128092136.GA9631@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Let me begin by filling in some background to this problem ... though I 
have to admit that much of this is guesswork, at least as regards its 
applicability to your situation.

The usual reason for anti-spam programs to reject an address such as yours 
is that it is assigned dynamically, so at any given moment, there is no way 
to know what host is using it. The spamming opportunity that dynamic 
assignment offers is most apparent with dial-up accounts, but it applies to 
dynamic assignment methods like DHCP and PPPoE as well. May ISPs provide 
(or the anti-spammers otherwise acquire) lists of their 
dynamically-assigned IP addresses, and the anti-spam programs offer that as 
one possible blackhole list (a different one from the "known open relay" 
list ... the well-known one is the DUL or dial-up list).

The antispammers take the position that people with dynamic IP addresses 
should be forced to use their ISPs' mail relays. Those smarthost relays, if 
properly configured, will allow outgoing mail only from authorized, 
authenticated users (and if not properly configured, will be on the 
open-relay list so blocked).

The only saving grace here is that not many sites use the DUL to block 
e-mail, possibly because it is somewhat inaccurate (my static address, for 
example, occasionally turns up on it), possibly because enough legitimate 
users have setups like yours that using it blocks too much non-spam e-mail.

So ... the context in which use of smtp_auth comes up is that it is a 
device for authenticating your outgoing mail to your ISP for forwarding by 
its mail forwarder (relay). The details here can vary a bit from ISP to 
ISP, but one common mechanism is to require POP3 authentication (userid and 
password, called POP before SMTP) before accepting e-mail for relaying. 
There are also several SMTP-specific methods around, but I do not know how 
often any of them is actually used.

The standard implementation of smtp_auth in Linux MTAs does not appear to 
handle this problem. It handles the other side of the problem ... that is, 
it provides a way for you to require that your users authenticate 
themselves before they are able to send mail. Its most important use (I 
think) is to allow your offsite users with dynamic addresses (mobile users, 
DHCP users, PPPoE and dial-up users) to use your SMTP server as a relay.

Unfortunately, after a bit of looking, I could find no indication that 
either sendmail or any of the other common Linux MTAs (exim, postfix) 
implements a way to authenticate itself to a smarthost relay. I did find 
this reference to a sendmail *variant* that provides client-side smtp_auth 
in SuSE --

         http://sdb.suse.de/en/sdb/html/sendmail_smtp_auth.html

I also found a reference to an MTA called Masqmail that seems designed to 
do what you want --

         http://innominate.org/kurth/masqmail/

Finally, this site lists a bouch of MTA alternatives, but of them, only the 
two I mention above looked promising for your situation --

         http://www.linuxlinks.com/Software/System/Daemons/SMTP/index.shtml

In closing, I am sorry that this is not the sort of direct, focused help 
you wanted. I hope it will still be of some use to you. Good luck.

At 10:21 AM 11/28/02 +0100, Theo. Sean Schulze wrote:
>Hello,
>
>Does anyone have any advice they can offer on setting up smtp_auth on my 
>SuSE 8.0 system at home?  The problem I am trying to solve is this.  My 
>SuSE 8.0 system here at home (dragoon.nuthole.de/localhost) is set up to 
>send my emails out as tschulze@temfinders.org.  Teamfinders.org is a 
>domain that I have that is hosted by a hosting service, and that service 
>is not my ISP.  My ISP is 1&1 here in Germany, and I have a separate 
>domain there that they offered as part of my DSL package.  Several times 
>now I have gotten email deliveries rejected because the dynamically 
>assigned IP I receive from 1&1 is blackholed.  There appears to possibly 
>be an issue with the machines at those addresses being open relays used 
>for spamming.  I have checked my mail logs, and as far as I can tell, my 
>machine is rejecting attempts to use it as an open relay.  Several of the 
>rejection messages have suggested the possibility that the emails would 
>have been accepted if I had been using smtp_auth.
>
>I have read through SuSE's configuration file at /etc/sysconfig/sendmail, 
>and shortly I will start working my way through 
>/usr/share/doc/packages/sendmail/README and 
>/usr/share/doc/packages/sendmail/op.txt.bz2.  I have also printed out 
>several articles from www.sendmail.org/~ca/ and have begun to read through 
>those.  (That's going to take several re-reads though before I've grokked 
>all that.)  So, I have no shortage of information on the topic.  What I 
>was hoping for was that if anyone on the list has some helpful hints or 
>tips from having done something like this himself, particularly setting up 
>a home server to climb out of the black hole, then that might help me get 
>a step ahead.



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
