From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem
Date: Wed, 11 Dec 2002 13:51:16 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212111851.gBBIpGB03369@hartford-hwp.com>
References: <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine> <5.1.0.14.1.20021210171852.020d3150@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021210171852.020d3150@celine> (message from Ray
	Olszewski on Tue, 10 Dec 2002 17:21:10 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

I ran fetchmail -V to get the version and other info, and there's
little difference from what I've got with my current (RH7.3)
system. The only difference is that on my current (RH7.3) system, old
messages are flushed before retrieval, while on new system (RH8.0)
--flush off. 

================================================================

Here is a bounced message. It was rejected by my own mailserver:

returned message:

Date: Tue, 10 Dec 2002 17:42:16 -0500
From: Mail Delivery Subsystem <MAILER-DAEMON@hartford-hwp.com>
To: brownh@hartford-hwp.com
Subject: Returned mail: see transcript for details
Auto-Submitted: auto-generated (failure)

   ----- The following addresses had permanent fatal errors -----
127.0.0.1
    (reason: 550 5.1.1 <127.0.0.1@hartford-hwp.com>... User unknown)
    (expanded from: 127.0.0.1)

   ----- Transcript of session follows -----
... while talking to hartford-hwp.com.:
>>> DATA
<<< 550 5.1.1 <127.0.0.1@hartford-hwp.com>... User unknown
550 5.1.1 127.0.0.1... User unknown

--gBAMgENo000872.1039560136/hartford-hwp.com
Content-Type: message/delivery-status

Reporting-MTA: dns; hartford-hwp.com
Arrival-Date: Tue, 10 Dec 2002 13:58:47 -0500

Final-Recipient: RFC822; 127.0.0.1@hartford-hwp.com
Action: failed
Status: 5.1.1
Remote-MTA: DNS; hartford-hwp.com
Diagnostic-Code: SMTP; 550 5.1.1 <127.0.0.1@hartford-hwp.com>... User unknown
Last-Attempt-Date: Tue, 10 Dec 2002 17:42:16 -0500

--gBAMgENo000872.1039560136/hartford-hwp.com
Content-Type: message/rfc822

Return-Path: <brownh>
Received: (from brownh@localhost)
	by hartford-hwp.com (8.12.5/8.12.5/Submit) id gBAIwl3h003184;
	Tue, 10 Dec 2002 13:58:47 -0500
Date: Tue, 10 Dec 2002 13:58:47 -0500
Message-Id: <200212101858.gBAIwl3h003184@hartford-hwp.com>
From: Haines Brown <brownh@hartford-hwp.com>
To: 127.0.0.1
Subject: test from lo 10 dec 13:58
Reply-to: brownh@hartford-hwp.com
...

---

Something's messed up here with my identity. 127.0.0.1 is not a UID on
my domain. I don't recall what "test from lo" means unless for some
reason I mailed the message to the lo IP address, which perhaps
explains it, but does not hint at what happened to messages mailed to
myself. 

=========================================================

This is my ~/.fetchmailrc:

  set postmaster "postmaster"
  poll pop.registeredsite.com 
  proto POP3
  user "brownh@hartford-hwp.com" 
  password "<password>" 
  limit 100000	
  flush  

I also tried

  poll pop.registeredsite.com 
  proto POP3
  user brownh@hartford-hwp.com 
  password <password> 
 
but no difference. Mail files very slow to download, but then groups
of several come in a burst in the midst of slow ones. That's the usual
problem. 

==========================================================

I did a fetchmail --configdump dump and find that the only diff
with the dump from my current (RH7i.3) machine is:

9c9
<     "idfile":"/home/brownh/.fetchids",
---
>     "idfile":"/root/.fetchids",
46c46
< 		    'localnames':["brownh"],
---
> 		    'localnames':["root"],
child process exited abnormally

I assume (hope!) this diff only because I inadvertantly ran it as
root. Obviously I'll need to verify that presumption.

==========================================================

I was going to regenerate a ~/.fetchmailrc file automatically with
fetchmailconf, but find that utility is not included in RH8.0. The man
fetchmail presumes it is present. The fetchmail web page says it comes
packaged with fetchmail. Why it is missing, I don't know. In light of
my damaged rp-pppoe, I worry that the fetchmail installation might be
flawed. But rpm -V didn't report anything.

I have a much newer fetchmail rpm for a i686 machine that I'm tempted
to install, but my use of fetchmail takes advantage of a bug in the
program (flushing messages over a certain size before downloading
them, which is not supposed to be possible), and I hestitate for that
reason to change things. But if fetchmailconf is supposed to work
under RH8.0, I may have to reinstall fetchmail. 

Haines Brown 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
