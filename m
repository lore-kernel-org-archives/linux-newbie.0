From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM settings and hardware resources...
Date: 24 Oct 2002 06:35:14 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035455725.31480.71.camel@localhost.localdomain>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet>
	<0210232036180A.00497@unix.pa3gcu>
	<1035409896.31480.33.camel@localhost.localdomain> 
	<0210240640220D.00497@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0210240640220D.00497@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie <linux-newbie@vger.kernel.org>

OK, but doesn't a CD-ROM have a read-ahead setting?


On Thu, 2002-10-24 at 02:40, pa3gcu wrote:
> On Wednesday 23 October 2002 21:51, Bryan Simmons wrote:
> > Perhaps dma wasn't the problem.  Here's the output when I execute hdparm
> > on /dev/hdc (my CD-RW):
> >
> > /dev/hdc:
> >  HDIO_GET_MULTCOUNT failed: Input/output error
> >  IO_support   =  1 (32-bit)
> >  unmaskirq    =  1 (on)
> >  using_dma    =  1 (on)
> >  keepsettings =  0 (off)
> >  readonly     =  0 (off)
> >  BLKRAGET failed: Input/output error
> >  HDIO_GETGEO failed: Invalid argument
> >
> > When I try to retrieve the read-ahead setting: hdparm -a /dev/hdc I get:
> >
> > /dev/hdc:
> >  BLKRAGET failed: Input/output error
> 
> There are some settings which do not apply to cdroms, one of which is 
> BLRAGET, the other shown above is geometry settings of which a cdrom has not, 
> so that will fail as well.
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 
Regards,

Bryan Simmons 
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 On Integrity:

 "I'm going to be as good as they let me and
  as mean as they make me, and they all know
  that.  I don't ever lie. If I tell you a
  rooster can fly, get the harness."

   --Burl Cain, Louisiana State Pen Warden
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
