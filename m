From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM settings and hardware resources...
Date: 23 Oct 2002 15:20:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035400822.31016.14.camel@localhost.localdomain>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet>
	<1035315950.22123.76.camel@localhost.localdomain> 
	<02102315493607.00497@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02102315493607.00497@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: Robert Couture <linux-net@tcob1.net>, linux-newbie <linux-newbie@vger.kernel.org>

The CD-ROM in question is a CD-RW.  The system set it up as /dev/scd0
which is not accessible from hdparam.  if I turn it into an ide device,
I will no longer be able to write CDs with it.

Does anyone know a way around this?  I can't hardly believe that all the
millions of Linux users have been, and still are, stuck with CD-RWs that
have to masquerade as SCSI devices.


On Wed, 2002-10-23 at 11:49, pa3gcu wrote:
> On Tuesday 22 October 2002 19:45, Bryan Simmons wrote:
> > You missed the part where I said the only way to retrieve the files was
> > in Windows and that I wanted to enable whatever error correction or
> > multiple read settings that Windows has but while I'm in Linux.
> >
> > Any ideas?
> 
> It sounds to me like you dont have dma set for the cdrom.
> 
> man hdparm will explain howto turn it on.
> 
> If thats not it then please disregard this mail.
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
