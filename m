From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Setting up an IMAP server
Date: Thu, 24 Apr 2003 09:33:47 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00a801c309f0$c9d84220$0300000a@iih.usyd.edu.au>
References: <001901c309e3$1a129f00$4b01a8c0@t9397.tjem.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chris Rose <offline@shaw.ca>, "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

Chris Rose wrote:
> I'm looking for the steps and instructions for setting up an IMAP
> server on Redhat 9.  What i intend is for fetchmail (ideally running
> as a service) fetch each user's pop3 mail from remote servers, and
> then have it accessible via imap mailboxes from both inside and
> outside the network.  In between these points, ideally i'd like to
> have some degree of nondestructive (ie: flag and copy) spam filtering
> and automated message filtering as well.
>
> Outgoing mail is not necessary, though it'd be nice.  If it is
> necessary, i don't have a domain per se, only a dynamic DNS service.
> I'm of the impression that this sort of thing matters :)

This will give you a pretty good start:

http://www.firstpr.com.au/web-mail/RH71-Postfix-Courier-Maildrop-IMAP/

Postfix:  For mail
Courier Maildrop:  For dropping mail into Maildir
Courier IMAP:  For IMAP

Fetchmail is easy - Google or RTFM for that.

Try SpamAssassin as part of Maildrop or integrated into Postfix for spam
filtering.

Think about a virus filtering solution and something to handle
attachments/MIME - Anomy or the like.

Regards

James Turnbull

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
