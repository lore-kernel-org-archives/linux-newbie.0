From: "Tom Beer" <mailings@analogon.com>
Subject: Re: nomore newbies??
Date: Mon, 20 May 2002 00:59:31 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002101c1ff88$d73fc3c0$0901a8c0@system>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

3.2.  Message Rejection and Bouncing

   MTAs and MSAs MAY implement message rejection rules that rely in part
   on whether the message is a submission or a relay.

   For example, some sites might configure their MTA to reject all RCPT
   TOs for messages that do not reference local users, and configure
   their MSA to reject all message submissions that do not come from
   authorized users, based on IP address, or authenticated identity.

   NOTE:  It is better to reject a message than to risk sending one that
   is damaged.  This is especially true for problems that are
   correctable by the MUA, for example, an invalid 'From' field.

   If an MSA is not able to determine a return path to the submitting
   user, from a valid MAIL FROM, a valid source IP address, or based on
   authenticated identity, then the MSA SHOULD immediately reject the
   message.  A message can be immediately rejected by returning a 550
   code to the MAIL FROM command.

   Note that a null return path, that is, MAIL FROM:<>, is permitted
   and MUST be accepted. (MUAs need to generate null return-path
   messages for a variety of reasons, including disposition
   notifications.)

   Except in the case where the MSA is unable to determine a valid
   return path for the message being submitted, text in this
   specification which instructs an MSA to issue a rejection code MAY be
   complied with by accepting the message and subsequently generating a
   bounce message. (That is, if the MSA is going to reject a message for
   any reason except being unable to determine a return path, it can
   optionally do an immediate rejection or accept the message and then
   mail a bounce.)

   NOTE:  In the normal case of message submission, immediately
   rejecting the message is preferred, as it gives the user and MUA
   direct feedback.  To properly handle delayed bounces the client MUA
   must maintain a queue of messages it has submitted, and match bounces
   to them.

http://www.faqs.org/rfcs/rfc2476.html



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
