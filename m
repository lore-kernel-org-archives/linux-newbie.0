From: sean@tcob1.net
Subject: Re: Maildrop doesn't filter or log filters
Date: 02 May 2003 22:35:41 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <n2m-g.uwuh9av6a.fsf@tcob1.net>
References: <n2m-g.428061.a14921@tcob1.net> <00da01c31037$5ffe1a80$0300000a@iih.usyd.edu.au>
Reply-To: sean@tcob1.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

"James Turnbull" <james@lovedthanlost.net> writes:

> sean@tcob1.net wrote:
> > On 26.04.2003 09:19:10, Chris Rose wrote:
> >
> >> Here's how i have things:  I'm using postfix as a local MTA, and it's
> >> calling maildrop with
> >> mailbox_command = /usr/bin/maildrop
> >>
> >> I have only one user that receives mail on my system, and that user
> >> account has/d a ~/.mailfilter file.  The problem is, whenever that
> >> file exists, no mail whatsoever makes it into my Maildir.  I've
> >> tested this - i send a message to myself, and i receive nothing as
> >> long as there's a mailfilter file existing.  As soon as i rename it,
> >> i'm fine.
> >>
> >
> > What are the permissions on the .mailfilter file, they must be 0600.
> > I had problems like this and this caused problems similar
> 
> Look in your mail logs / syslogs.  Postfix / Maildrop is usualy pretty good
> about telling you what the problem is.
> 

I cannot comment about Postfix as I never used it but Maildrop will not write to a log file if there is a permissions problem.

Sean
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
