From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: retrieval
Date: Sun, 2 Jan 2005 13:31:28 +0530
Message-ID: <4b0d6e0d05010200016a7c3abe@mail.gmail.com>
References: <20041231045512.81128.qmail@web52901.mail.yahoo.com>
	 <20050101060653.D86614E4F9@heisspf>
	 <20050101135911.GA14555@imperial.ac.uk>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050101135911.GA14555@imperial.ac.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

its really a trivial thing..... just alias rm to rm -i in your
.bashrc

if you have deleted it one bruteforce method to retrieve it (if it was
a text file)
is to run 'strings'  on the partition that had the file, catch all output
and sift through it to find your data (might be possible, a friend of
mine had tried it...)

regards, 
Joy.M.Monteiro


On Sat, 1 Jan 2005 13:59:11 +0000, Ohadi, Hamid
<hamid.ohadi@imperial.ac.uk> wrote:
> I've noticed that some distributions have the --interactive option
> switched on by default and therefore the less would be the chance of
> removing a file by mistake. I was wondering if it's possible to do
> that in SuSE as well or not.
> 
> On 01-01-05 14:06, Peter wrote:
> > Do a google for safedelete.
> >
> > DESCRIPTION
> >        safedelete  provides  a way to safely delete files so they
> >        can be undeleted on demand.  safedelete `deletes' files by
> >        copying  them to a safedelete directory which is specified
> >        at install time.  Files processed by safedelete are  given
> >        a  new  unique  filename  after  they  are  placed  in the
> >        safedelete directory.  This allows multiple copies of  the
> >        same  file to be safedeleted without having to worry about
> >        collisions with existing files.
> >
> > Regards
> > --
> > Peter
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> 
> --
> Monday is an awful way to spend one seventh of your life.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
people always turn away,
from the eyes of a stranger...
Afraid to know
what lies behind the stare.......
    --QueensRyche
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
