From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem
Date: Thu, 12 Dec 2002 17:14:45 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212122214.gBCMEjD03296@hartford-hwp.com>
References: <200212111851.gBBIpGB03369@hartford-hwp.com>
 <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine> <5.1.1.6.0.20021212150453.01f53a18@pop3.demon.co.uk> <200212121806.gBCI6P408751@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200212121806.gBCI6P408751@hartford-hwp.com> (message from Haines
	Brown on Thu, 12 Dec 2002 13:06:25 -0500)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brownh@hartford-hwp.com
Cc: carl@anexia.co.uk, linux-newbie@vger.kernel.org

I defined the To: field in ~/.fetchmailrc. Here's what I'm using now
for testing

  set logfile /opt/tmp/fetchmail_dec12.log
  poll pop.registeredsite.com 
  proto POP3
  user brownh@hartford-hwp.com 
  password XXXX 

  keep
  smtpname brownh@hartford-hwp.com

I now see that I did in fact have emacs set up (setq mail-self-blind
t) all along. For some reason, the blind copies did not show up until
after I had rebooted the HD. But with this new boot, rmail sees them.

I found /var/spool/brownh. Here's what's in it (as I later discovered,
of course, rmail can easily read it).

====================== the failed messages ==========================

1. A message rom Mail Delivery Subsystem
<MAILER-DAEMON@hartford-hwp.com> sent earlier today (when I booted the
present HD? I've not run any mail applications nor gone on line since
yesterday with this HD). The mail deliver subsystem reports that the
address of my message of the day before had a fatal error. Indeed user
localhost@hartford-hwp.com is unknown. But This is a message I sent to
"localhost," and that may simply be impossible.

Here's the critical part:


   ----- The following addresses had permanent fatal errors -----
localhost
    (reason: 550 5.1.1 <localhost@hartford-hwp.com>... User unknown)
    (expanded from: localhost)

   ----- Transcript of session follows -----
... while talking to hartford-hwp.com.:
>>> DATA
<<< 550 5.1.1 <localhost@hartford-hwp.com>... User unknown
550 5.1.1 localhost... User unknown

--gBCJn2fL000871.1039722543/hartford-hwp.com
Content-Type: message/delivery-status

Reporting-MTA: dns; hartford-hwp.com
Arrival-Date: Wed, 11 Dec 2002 18:09:16 -0500

Final-Recipient: RFC822; localhost@hartford-hwp.com
Action: failed
Status: 5.1.1
Remote-MTA: DNS; hartford-hwp.com
Diagnostic-Code: SMTP; 550 5.1.1 <localhost@hartford-hwp.com>... User unknown
Last-Attempt-Date: Thu, 12 Dec 2002 14:49:03 -0500

--gBCJn2fL000871.1039722543/hartford-hwp.com
Content-Type: message/rfc822

Return-Path: <brownh>
Received: (from brownh@localhost)
	by hartford-hwp.com (8.12.5/8.12.5/Submit) id gBBN9Gnd002694;
	Wed, 11 Dec 2002 18:09:16 -0500
Date: Wed, 11 Dec 2002 18:09:16 -0500
Message-Id: <200212112309.gBBN9Gnd002694@hartford-hwp.com>
From: Haines Brown <brownh@hartford-hwp.com>
To: localhost
Subject: test RH8.0 to localhost dec11 1800
Reply-to: brownh@hartford-hwp.com


2. Also in queue is a message sent to a valid address, which is a mail
fowarding server. The message was not fowarded back to me because the
target name server timed out. This was not a fatal error. I've not
known that I've had trouble with that server. It won't try again until
the 16th.

The header of this message looks ok, except that Return-Path is not a
valid address:

Return-Path: <brownh>
From: Haines Brown <brownh@hartford-hwp.com>
To: kb1grm@arrl.net

Reply-to: brownh@hartford-hwp.com


3.  A failed message sent to localhost.localdomain. I don't know that
I'd expect such an address to work, especially since it came out as
localhost.localdomain@hartford-hwp.com.

Would you agree that fetchmail or sendmail is misconfigured? Despite
the provision for blind copy in the mails, I get nothing back right
away. I captured copies of the queue files in case there may be
further useful into in them.

=========================================================================

I compared /etc/aliases, and found that my alias file lacks:

mailer-daemon:	postmaster
postmaster:	root

But supplies a range of new aliases such as:
 
sshd:		root
smmsp:		root
mailman:	root
postfix:	root
netdump:	root
ldap:		root

I caputred the /etc/mail/sendmail.cf file, but it's too big and
complicated for ready analysis. There's a lot different from my old
sendmail.cf, but I wouldn't know how to analyse those differences.

I rechecked /ect/hosts: 
 
  127.0.0.1   hartford-hwp.com   localhost.localdomain   localhost

this seems ok


Haines Brown=
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
