From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: string manipulating?
Date: Sun, 05 Jan 2003 12:42:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E186E82.7CDBCC0C@gelm.net>
References: <200212081837.LAA15273@cu.imt.net> <3DF44FE9.69FB5E4D@ihug.co.nz> <3E186154.D32669EB@gelm.net> <3E1864CF.31F52AB7@wa5rrh.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jim Reimer <jdr@wa5rrh.org>
Cc: linux-newbie@vger.kernel.org

Hi, Jim:

 Thanks, that works great.
Please explain:

\( is the left parenthesis escaped (?)

'-f' is 'output only these fields'
 what does the '2' of '-f2' do?

chuck

Jim Reimer wrote:
> 
> how 'bout
> 
> cut -d\( -f2
> 
> -jdr-
> 
> Chuck Gelm wrote:
> >
> > Howdy, Y'all:
> >
> >  Using 'grep' I've parsed some stdout to lines ending in
> > ...(123.45.67.89):
> >  How can I either:
> >   extract the last 17 characters
> >   all characters after the first "("
> >   all characters from "(" to ")"
> >  ?
> >
> >  I tried
> > cut -c ".0123456789" filename.txt
> >  but it returns
> > cut: invalid byte or field list.
> >  :-|
> >
> > Regards, Chuck
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
