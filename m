From: Matthew Stapleton <matthewstapleton@juno.com>
Subject: Re: inverting a list
Date: Sat, 20 Jul 2002 23:53:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020720.235318.-315329.13.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lawson_whitney@juno.com
Cc: ichi@ihug.co.nz, linux-newbie@vger.kernel.org

Yes I knew there was an app that did exactly what I wanted...out of the
hundreds linux provides I could not remember.. Thanks -MS


On Sat, 20 Jul 2002 23:37:57 -0400 (EDT) lawson_whitney@juno.com writes:
> On Sun, 21 Jul 2002 ichi@ihug.co.nz wrote:
> 
> > st:        linux-newbie@vger.kernel.org
> >
> > Matthew Stapleton wrote:
> > >
> > > Can I use linux text utilities to invert the lines of
> > > a text file?  Say that the lines of the file are 50.
> > > (1,2, ...50)  How can I change the order the of lines
> > > so that line 1 is now line 50?
> >
> > Here's one off the top of my head.  I'm sure
> > that somebody can come up with a better one.
> > ---------------------------
> > #!/bin/bash
> > i=`cat $1|wc -l`
> > until [ $i = 0 ]
> > do head -n $i $1|tail -n 1
> > let i=i-1
> > done
> > ---------------------------
> >
> > Cheers,
> > Steven
> 
> If I understand the question, the answer is exactly, "tac".
> 
> Lawson
> ---oops---
> 
> 
> 


Matthew Stapleton
============================
People demand freedom of speech as a compensation for the freedom of
thought which they seldom use.  -SK
============================
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
