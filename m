From: Hal <haltec@kvinet.com>
Subject: Re: BitTorrent Client??
Date: Thu, 14 Sep 2006 08:55:36 -0400
Message-ID: <20060914125536.GA1178@lnx2.kvinet.com>
References: <20060913170301.GA31711@lnx2.kvinet.com> <Pine.LNX.4.62.0609132350220.2466@grinch.ro> <45088A96.1070809@gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <45088A96.1070809@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: chuck gelm <chuck@gelm.net>
Cc: caszonyi@rdslink.ro, linux-newbie@vger.kernel.org

Greetings Calin and Chuck; you have answered my query perfectly, but
I will annotate below anyway.. Apparently I selected a machine with
an incomplete Slack10.2 install, that had Java JRE but some other
needed libraries that were missing from the GTK+ install.. I will
start fresh and should be AOK..




On 09-13, chuck gelm wrote:
> Ditto, sort of.
> 
> I installed Azureus a year or so ago.
> 
> http://java.sun.com/javase/downloads/index.jsp
> 
> 
> 
>      Java Runtime Environment (JRE) 5.0 Update 8
> 
> The J2SE Runtime Environment (JRE) allows end-users to run Java 
> applications. 	
> 
> Installation Instructions <http://java.sun.com/j2se/1.5.0/jre/install.html>
> 
> 
> I'm using Slackware 10.2 [2.4.31].
> I do not recall that any libraries were needed.
> What libraries was your system claiming to need?
> What distribution and kernel version?

	You, obviously, had a good Slack install and I didn't.. Same
Slack as you, 10.2; 2.4.31.. Will annotate the missing libraries in
Calin's part below..


> 
> HTH, Chuck
> 
> caszonyi@rdslink.ro wrote:
> 
> >On Wed, 13 Sep 2006, Hal wrote:
> >
> >>
> >>Can I get some input about the various BitTorrent Clients available
> >>for Linux??
> >>
> >>I stumbled upon www.torrentreactor.net and found it very interesting.
> >>I've tried to install Azureus, written in Java, but am bogged down
> >>after installing a bazillion libraries it requires.. There must be a
> >>simpler route, I would think.. Maybe not.. I'm out of my league
> >>again... <grin> We thought Unix was complicated in the "good old
> >>days."
> >>
> >
> >I just installed azureus a couple of minutes ago.
> >I only had to download the tar.bz2 file and i read the readme inside 
> >of it and it was up and running.
> >
> >AFAIK it only requires java so i have no idea about the libraries you 
> >are talking about. Can you be more specific - what libraries does it 
> >requiers ?
> >

	When invoking ./azureus in the azureus tree it balked several
times; first wanting libgdk_pixbuf; then libpangoxft, then
libpangox, plus several more.. Had I a proper installation I'm sure
this would not have happened.. I had to fetch each one in turn from
another machine that should have clued me as to what was wrong.. I
will start from scratch again, now that I know it is possible..

APPRECIATE!!!!

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
