From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Mailer Connections
Date: Sun, 11 Aug 2002 08:29:52 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208110815450.8397-100000@Consulate.UFP.CX>
References: <02080915532601.07686@localhost.localdomain>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02080915532601.07686@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Peter.

I've reformatted and reparagraphed your query to make it readable. Not
sure what happenned when you posted it, but it arrived here full of tab
characters...

> When I recently upgraded from RH7.1 to RH7.3 I got total keyboard
> lock-up with some programs.  In order to go on working I had to
> reinstall RH7.1. After that I found
>
> a) that I could not send e-mail any more using my mail program exmh
>    nor using <mail> from the console. I have to resort to either pine
>    or kmail. This is the case using my ISP for my e-mail address.
>
> b) that I could not send any mail at all using my alternate ISP
>    subscribed to with a pre-paid webcard.
>
> In case a) the message in maillog was either ...stat= service not
> available.. or ...stat=Data format error. This one especially when
> sending to this list.
>
> In case b) the message popping up on the screen is "sorry that
> domain isn't allowed to be relayed thru this MTA".
>
> How do I revert back that I can mail again with any mail program
> especially exmh and with any ISP?

First, a disclaimer: I don't use exmh or kmail and never have, so can't
comment on anything specific to those. However, I have used both pine
and mail and the comments below relate to them.

Next: A summary of how MOST mail programs send email under Linux: They
open a connection to port 25 on localhost and deliver the email to
whatever answers, leaving that to sort out the problem. On most Linux
systems, it's sendmail that answers and deals with the mail. I can add
that sendmail is a complex beastie to set up, and it's all too easy to
get it wrong.

One thing pine has is that it can be configured with the domain your
email address is in, and this can easily be different from that of the
machine it's run on. However, mail doesn't have that ability, and always
uses the hostname of the machine it's run on as the domain.

As a result, the solution may be as simple as setting the hostname for
your machine to match that of your preferred ISP by editing the file
/etc/sysconfig/network and putting the full; hostname on the HOSTNAME=
line, then rebooting your system.

Incidentally, sendmail normally tries to send all outgoing emails direct
to the relevant delivery host, so the ISP you're dialled up with should
make no difference at all.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
