From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sendmail won't receive remote messages
Date: Tue, 26 Aug 2003 15:40:51 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030826153334.01f0abe8@celine>
References: <bif8v7$sd7$1@sea.gmane.org>
 <5.1.0.14.1.20030826070427.01f0a9f0@celine>
 <bigk1f$2ru$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bigk1f$2ru$1@sea.gmane.org>
References: <bif8v7$sd7$1@sea.gmane.org>
 <5.1.0.14.1.20030826070427.01f0a9f0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Robert <robert_schmidli@hotmail.com>, linux-newbie@vger.kernel.org

OK, Robert, here's the deal.

1. A message sent directly to robert@[yourdomain].com.au ... I'm keeping 
the real name of [yourdomain] confidential at your request ... appears from 
this end to go out. It's not in the mailq on my MTA server.

2. If I telnet to the MTA actually running at [yourdomain].com.au, I appear 
to be able to send a message from here to robert@[yourdomain].com.au .

You might let me know which, if either, of those messages actually arrives.

But ...

3. If I run the command "host -t MX  [yourdomain].com.au", I get 3 results, 
none of which is the server [yourdomain].com.au ... all 3 are 
[something].iinet.net.au ... your ISP, I assume. This means that ordinary 
off-site e-mail will be sent to one of those servers, not yours. Only God 
and your ISP know what happens to it after that. This is probably your problem.

At 07:38 AM 8/27/2003 +1000, Robert wrote:

>"Ray Olszewski" <ray@comarre.com> wrote in message
>news:5.1.0.14.1.20030826070427.01f0a9f0@celine...
> > At 07:23 PM 8/26/2003 +1000, Robert wrote:
> > >My mail server has been working without a glitch for a number of months.
> > >All of a sudden it won't receive messages from the Internet.  Local mail
> > >within my network is still received.  Our ISP is under new management -
>so
> > >maybe its not a problem with my system!

[details deleted]




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
