From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: fetchmail and smtp problem
Date: Fri, 13 Dec 2002 08:31:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212131331.gBDDV7x07827@hartford-hwp.com>
References: <200212121806.gBCI6P408751@hartford-hwp.com>
 <200212111851.gBBIpGB03369@hartford-hwp.com>
 <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.1.6.0.20021210124205.01f826f0@pop3.demon.co.uk>
 <5.1.0.14.1.20021210115320.020c5d00@celine>
 <5.1.0.14.1.20021210171852.020d3150@celine>
 <5.1.1.6.0.20021212150453.01f53a18@pop3.demon.co.uk>
 <200212121806.gBCI6P408751@hartford-hwp.com> <5.1.0.14.1.20021212161342.020eb720@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021212161342.020eb720@celine> (message from Ray
	Olszewski on Thu, 12 Dec 2002 16:28:05 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Ray,

> Both localhost and localhost.localdomain are candidatef for appearing to 
> the right of the @ sign, as alternatives to (in your case) hartford-hwp.com 
> . From the failures, it appears that you are trying to use them to the left 
> of the @ sign, as a substitute for brownh . Attempts to do this, quite 
> properly, fail.
 
Yes, I realize that, but my hostname is hartford-hwp.com, and so I
thought I could mail to the hostname and its aliases. I thought it
worth a try.

> So, based solely on these tests, there is NO evidence that sendmail
> is misconfigured. Bad addresses do bounce, and you do seem to get
> the bounces.

Which, given the challenges of sendmail, is good news.

> There might be a configuration problem in rmail (an MUA I am
> unfamiliar with) that causes the bcc attempts to fail, or there may
> be something else causing that problem (in fetchmail, sendmail, or
> the ISP's smtp server) ... but nothing you report below helps to
> sort that one out.

My understanding is that after fetchmail puts incoming mail into my
incoming queue (/var/spool/mail/brownh), rmail takes it, reformats the
header, and passes it along to sendmail, saving it in its own queue
(~/RMAIL). Rmail is meant for use with uucp and sendmail under
emacs. While I gather it can be a standalone application, I've not
been able to use it that way (ignorance). It has a -T debug option,
which I'll try, and a -D option to use a specified domain instead of
the default domain of ``UUCP''. It has no configuration as far as I
know, but only its executable and another binary file,
/usr/bin/rmail.sendmail.

But rather than chase my tail trying to fathom rmail, I'll use mutt
and also set up Mozilla as a mail utility to see what happens.
 
> I can't figure out what you are talking about with respect to item
> #2 in your list of messages.
> 
> Finally, in an earlier message you expressed some bewilderment about
> the term "outbox".

> a place where your MUA stores copies of e-mail messages you have
> sent.

I have always associated the term with MS, perhaps inaccurately (or
was Netscape reponsible?). I don't recall it from DOS or OS/2
days. The three examples I listed were from what I took to be rmail's
outgoing queue (or sendmail's incoming?), /var/spool/brownh, (I assume
the "outbox"). Sorry I was not clearer on that. You ask for more
information on the message that tried to get out to a mail forwarding
server (kb1grm@arrl.net), but timed out. Here is it:

> From brownh@hartford-hwp.com  Thu Dec 12 14:49:05 2002
> Return-Path: <brownh@hartford-hwp.com>
> Received: from hartford-hwp.com (hartford-hwp.com [127.0.0.1])
> 	by hartford-hwp.com (8.12.5/8.12.5) with ESMTP id gBCJn2Mw000877
> 	for <brownh@hartford-hwp.com>; Thu, 12 Dec 2002 14:49:04 -0500
> Received: (from brownh@localhost)
>	by hartford-hwp.com (8.12.5/8.12.5/Submit) id gBBN6WfB002624;
>	Wed, 11 Dec 2002 18:06:32 -0500
> Date: Wed, 11 Dec 2002 18:06:32 -0500
> Message-Id: <200212112306.gBBN6WfB002624@hartford-hwp.com>
> From: Haines Brown <brownh@hartford-hwp.com>
> To: kb1grm@arrl.net
> Subject: test from RH8.0 to kb1grm, dec 11 1800
> Reply-to: brownh@hartford-hwp.com
>
> From MAILER-DAEMON@hartford-hwp.com  Thu Dec 12 14:49:06 2002
> Return-Path: <MAILER-DAEMON@hartford-hwp.com>
> Received: from hartford-hwp.com (hartford-hwp.com [127.0.0.1])
> 	by hartford-hwp.com (8.12.5/8.12.5) with ESMTP id gBCJn2N0000877
>	for <brownh@hartford-hwp.com>; Thu, 12 Dec 2002 14:49:05 -0500
> Received: from localhost (localhost)
>	by hartford-hwp.com (8.12.5/8.12.5/Submit) id gBCJn2fM000871;
>	Thu, 12 Dec 2002 14:49:05 -0500
> Date: Thu, 12 Dec 2002 14:49:05 -0500
> From: Mail Delivery Subsystem <MAILER-DAEMON@hartford-hwp.com>
> Message-Id: <200212121949.gBCJn2fM000871@hartford-hwp.com>
> To: brownh@hartford-hwp.com
> MIME-Version: 1.0
> Content-Type: multipart/report; report-type=delivery-status;
>	boundary="gBCJn2fM000871.1039722545/hartford-hwp.com"
> Subject: Warning: could not send message for past 4 hours
> Auto-Submitted: auto-generated (warning-timeout)
>
> This is a MIME-encapsulated message
>
> --gBCJn2fM000871.1039722545/hartford-hwp.com
>
>    **********************************************
>    **      THIS IS A WARNING MESSAGE ONLY      **
>    **  YOU DO NOT NEED TO RESEND YOUR MESSAGE  **
>    **********************************************
>
> The original message was received at Wed, 11 Dec 2002 18:06:32 -0500
> from brownh@localhost
>
>   ----- Transcript of session follows -----
> 451 arrl.net: Name server timeout
> 451 arrl.net: Name server timeout
> Warning: message still undelivered after 4 hours
> Will keep trying until message is 5 days old
>
> --gBCJn2fM000871.1039722545/hartford-hwp.com
> Content-Type: message/delivery-status
> 
> Reporting-MTA: dns; hartford-hwp.com
> Arrival-Date: Wed, 11 Dec 2002 18:06:32 -0500
> 
> Final-Recipient: RFC822; kb1grm@arrl.net
> Action: delayed
> Status: 4.4.3
> Last-Attempt-Date: Thu, 12 Dec 2002 14:49:05 -0500
> Will-Retry-Until: Mon, 16 Dec 2002 18:06:32 -0500
>
> --gBCJn2fM000871.1039722545/hartford-hwp.com
> Content-Type: message/rfc822
>
> Return-Path: <brownh>
> Received: (from brownh@localhost)
>	by hartford-hwp.com (8.12.5/8.12.5/Submit) id gBBN6WfB002624;
>	Wed, 11 Dec 2002 18:06:32 -0500
> Date: Wed, 11 Dec 2002 18:06:32 -0500
> Message-Id: <200212112306.gBBN6WfB002624@hartford-hwp.com>
> From: Haines Brown <brownh@hartford-hwp.com>
> To: kb1grm@arrl.net
> Subject: test from RH8.0 to kb1grm, dec 11 1800
> Reply-to: brownh@hartford-hwp.com

I did not originally expand on this message because it seemed to me to
resemble the first. Here, brown@localhost reports that the mailer
daemon at hartford-hwp.com had to delay sending the message to
kb1grm@hartford-hwp.com because it could not resolve the arrl.net
domain? This message strikes me as the kind of thing one would expect
in the incoming queue.

> You should see if rmail maintains a maibox called out, or outbox, or
> sent-messages, or some other plausible synonym; if it does, you
> could then let us *see* the problem messages (at least the headers)
> rather than just telling us what you remember, or what you think is
> important, about them.

I suspect the message above, more than four hours having passed, will
show up in rmail's incoming queue when next I boot. 

Fetchmail has a lot of options, and I'm trying to make sense of
them. One or two might be revealing.

Haines

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
