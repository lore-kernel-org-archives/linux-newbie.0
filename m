From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem
Date: Thu, 12 Dec 2002 13:06:25 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212121806.gBCI6P408751@hartford-hwp.com>
References: <200212111851.gBBIpGB03369@hartford-hwp.com>
 <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine> <5.1.1.6.0.20021212150453.01f53a18@pop3.demon.co.uk>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.1.6.0.20021212150453.01f53a18@pop3.demon.co.uk> (message
	from Carl on Thu, 12 Dec 2002 15:11:51 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org

> If you are collecting ALL the mail in the mail box on the ISP server
> to go to a SINGLE mailbox on your local server then you can force
> fetchmail to rewrite the new To: header sent to sendmail with the
> --smtpname switch on the command line (or the relevant keyword in
> the fetchmailconf file). This doesn't explain how 127.0.0.1 got in
> the To: header but will stop it from happening again.

Yes, that seems a harmless step. If my outgoing lets lost because it
has a messed up To: field, that would would seem to be a workaround.

> The first question you need to answer is -- how did 127.0.0.1 get
> into the "To:" header? Was it an addressing error on your part, or
> did something rewrite it to that value? I'd suggest you check the
> outbox of whatever program you used to send the message. If the "To:
> 127.0.0.1" line appears in your original, then it was just a typo
> and of no significance to your troubleshooting (that is, the reject
> is correct). If the original has a different To: line, then post a
> followup with the details -- what MUA, which system (hard disk) you
> were using, and what the original To: line said.

It may have been a typo, but obviously something more's going on, for
I'm not getting back test messages sent to myself now at all. In fact,
I probably have emacs set up for mail-self-blind. If so, the lack of
BCC messages is really significant.

Being a city-boy, I'm not too sure what an "outbox" is ;-). I run
rmail, and if I'm not connected, it's got to save its outgoing
messages in a queue somewhere, just as ~/RMAIL holds incoming. Perhaps
it is smail that handles outgoing messages, and if so, it logs in
/var/log/smail/logfile and has as its outgoing queue
/var/spool/smail/input/* 

I'll compare /etc/sendmail.cf with what I've running right now
(current machine is a working copy of RH7.3) to see the diff. Also
will run rmail with debug option (-T).

Another concern is my hostname. My ISP knows me (UID) as
"brownh@hartford-hwp.com", but # hostname returns hartford-hwp.com. In
my /etc/hosts I believe I have:

  127.0.0.1 hartford-hwp.com localhost.localdomain localhost

I'll recheck, but I'd like some assurance even this is correct. Do I
need a brownh@hartford-hwp.com alias in /etc/hostds?. I'm also going
to compare /etc/alias with what works on my current machine (RH7.3). 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
