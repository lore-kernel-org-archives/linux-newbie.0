From: "Robert" <robert_schmidli@hotmail.com>
Subject: Re: Sendmail won't receive remote messages
Date: Wed, 27 Aug 2003 09:24:22 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bigq76$l8v$1@sea.gmane.org>
References: <bif8v7$sd7$1@sea.gmane.org> <5.1.0.14.1.20030826070427.01f0a9f0@celine> <bigk1f$2ru$1@sea.gmane.org> <5.1.0.14.1.20030826153334.01f0abe8@celine>
Reply-To: "Robert" <robert_schmidli@hotmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> OK, Robert, here's the deal.
>
> 1. A message sent directly to robert@[yourdomain].com.au ... I'm keeping
> the real name of [yourdomain] confidential at your request ... appears
from
> this end to go out. It's not in the mailq on my MTA server.
>
> 2. If I telnet to the MTA actually running at [yourdomain].com.au, I
appear
> to be able to send a message from here to robert@[yourdomain].com.au .
>
> You might let me know which, if either, of those messages actually
arrives.
>
> But ...
>
> 3. If I run the command "host -t MX  [yourdomain].com.au", I get 3
results,
> none of which is the server [yourdomain].com.au ... all 3 are
> [something].iinet.net.au ... your ISP, I assume. This means that ordinary
> off-site e-mail will be sent to one of those servers, not yours. Only God
> and your ISP know what happens to it after that. This is probably your
problem.
>
> At 07:38 AM 8/27/2003 +1000, Robert wrote:
>
> >"Ray Olszewski" <ray@comarre.com> wrote in message
> >news:5.1.0.14.1.20030826070427.01f0a9f0@celine...
> > > At 07:23 PM 8/26/2003 +1000, Robert wrote:
> > > >My mail server has been working without a glitch for a number of
months.
> > > >All of a sudden it won't receive messages from the Internet.  Local
mail
> > > >within my network is still received.  Our ISP is under new
management -
> >so
> > > >maybe its not a problem with my system!

The telnet message arrived but the "ordinary" one didn't.  I've finally
managed to contact my ISP about this.  It looks as if my static IP address
has been corrupted, as you have correctly pointed out. With any luck it will
be fixed in the next few hours.

I'm just posting this so that readers can see the end of the story!

Robert.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
