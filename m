From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Mailer Connections
Date: Fri, 16 Aug 2002 06:59:30 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208160639100.8397-100000@Consulate.UFP.CX>
References: <200208150109.JAA01124@philonline.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208150109.JAA01124@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Peter.

Here's the relevant headers this time...

On Thu, 15 Aug 2002, Peter wrote:

> Received: from vger.kernel.org ([209.116.70.75])
> 	by phoenix.infradead.org with esmtp (Exim 4.10)
> 	id 17f98e-00015h-00
> 	for rhw@infradead.org; Thu, 15 Aug 2002 02:09:24 +0100
> Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
> 	id <S316258AbSHOBF0>; Wed, 14 Aug 2002 21:05:26 -0400
> Received: (majordomo@vger.kernel.org) by vger.kernel.org
> 	id <S316289AbSHOBF0>; Wed, 14 Aug 2002 21:05:26 -0400
> Received: from [202.95.239.59] ([202.95.239.59]:14340 "EHLO
>     philonline.com")
> 	by vger.kernel.org with ESMTP id <S316258AbSHOBFZ>;
> 	Wed, 14 Aug 2002 21:05:25 -0400
> Received: from philonline.com (pfheiss@localhost)
> 	by philonline.com (8.9.3/8.9.3) with ESMTP id JAA01124
> 	for <linux-newbie@vger.kernel.org>; Thu, 15 Aug 2002 09:09:20 +0800
> X-Mailer: exmh version 2.5 07/13/2001 with nmh-1.0.4
> To:	Linux Newbies <linux-newbie@vger.kernel.org>
> Subject: Re: Mailer Connections 
> Date:	Thu, 15 Aug 2002 09:09:20 +0800
> From:	Peter <pfheiss@philonline.com>
> X-Mailing-List:	linux-newbie@vger.kernel.org

> Thanks again Riley, apparently you are leaving in the UK.

If you mean "living" rather than "leaving", then yes.

>> The top "Received:" line gives the critical evidence when it reports
>> "helo=localhost.localdomain" as this states that your system's
>> hostname is currently set up as localhost.localdomain as stated, and
>> this is also confirmed both by the bottom "Received:" line and by
>> the "From:" line. As you can see, this is wrong.

> I never had to edit /etc/sysconfig/network in all previous versions
> of RH.  Some kind program was doing the right thing for me. I only
> had to edit /etc/hosts. Now when I had to re-install RH7.1 things
> went wrong. When I tried to edit in /etc/hosts the line: "127.0.0.1
> localhost.localdomain localhost" to "127.0.0.1 localhost" I could
> not print any longer and on booting, section starting lpd, I would
> get a long complain not finding the printer.
>
> I now then checked in RH6.2 /etc/sysconfig/network and it said there
> HOSTNEAME="Peter". I put that into RH7.1 and now after your last
> mail changed /etc/hosts to:
>
> 127.0.0.1       localhost
> 202.95.238.2    philonline.com  Peter
> 202.78.74.68    webcard.skyinet.net     Pedro

Am I right in assuming that the last two lines are the statis IP's you
get given when you connect to the stated ISP's ? If you are with an ISP
that gives you Dynamic IP addresses (as many do), then the above could
cause other problems when you are allocated other than the addresses you
have quoted, so be careful.

> Printer prints now and no complains on booting about lpd. I assume
> my from address should be correct as well now.

As shown in the quoted headers, it is.

> I assume that you received my last mail twice.

The second copy arrived alongside this email from you.

> When I sent it the first time and had changed HOSTNAME to "Peter"
> from localhost.localdomain I had not rebooted as you suggested and I
> got the following messages in /var/log/maillog:
>
> Aug 13 14:03:45 localhost sendmail[2687]: OAA02685:  
> to=<linux-newbie@vger.kernel.org>,
> ctladdr=<pfheiss@localhost.localdomain> (500/500), delay=00:00:08,
> xdelay=00:00:05, mailer=esmtp, relay=vger.kernel.org.
> [209.116.70.75], stat=Data format error
>
> Aug 13 14:03:54 localhost sendmail[2687]: OAA02685:
> to=<rhw@InfraDead.Org>, ctladdr=<pfheiss@localhost.localdomain>
> (500/500), delay=00:00:17, xdelay=00:00:09, mailer=esmtp,
> relay=phoenix.infradead.org. [195.224.96.167], stat=Sent (OK
> id=17eUmE-0008Fi-00)
>
> after rebooting:

The first entry says "stat=Data format error" and thus states that that
particular message was not sent. This is true of any such line that says
other than "stat=Sent", and indicates that the copy addressed to the
linux-newbies list (the "to=<...>" part of that entry) failed to get
sent.

> Aug 13 14:42:08 philonline sendmail[1158]: OAA01156:  
> to=<linux-newbie@vger.kernel.org>, ctladdr=<pfheiss@philonline.com>
> (500/500), delay=00:00:11, xdelay=00:00:09, mailer=esmtp,
> relay=vger.kernel.org.  [209.116.70.75], stat=Sent (2.7.0 nothing
> apparently wrong in the message.)
>
> Aug 13 14:42:16 philonline sendmail[1158]: OAA01156:
> to=<rhw@InfraDead.Org>, ctladdr=<pfheiss@philonline.com> (500/500),
> delay=00:00:19, xdelay=00:00:08, mailer=esmtp,
> relay=phoenix.infradead.org. [195.224.96.167], stat=Sent (OK
> id=17eVNM-0008RL-00)

This time, both copies were sent. The bit in brackets after the
"stat=Sent" is the first line received from the mailhost you addressed
that message to.

> You can see that after rebooting my address is correct. You replied
> to the first message where From: was wrong yet.

At the time, that was the only copy I had received. I have now received
the second copy as well, and it shows headers similar to those quoted
for this email.

> Did a programmer change something that one has to edit now
> /etc/sysconfig/network a file I did not even know it existed or did
> I miss something when installing RH7.1?

The /etc/sysconfig/ directory contains many files relating to your
system configuration, and have done so from at least RH 4.1 (when I
first got involved with Linux). That particular file has been present
since at least then, and RHL has used it this way all the time.

Normally, the correct values are written in there during the
installation step, usually as a result of you providing the correct
details to questions asked in the pre-install questionnaires that RHL
installer gives you.

I would presume that for some reason, you provided the wrong value on
the relevant pre-iinstall screen, but it is almost impossible to work
out which screen was affected in this way.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
