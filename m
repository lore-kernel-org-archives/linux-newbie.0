From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Subject: Re: CD-ROM settings and hardware resources...
Date: 23 Oct 2002 17:51:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1035409896.31480.33.camel@localhost.localdomain>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet>
	<02102315493607.00497@unix.pa3gcu>
	<1035400822.31016.14.camel@localhost.localdomain> 
	<0210232036180A.00497@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0210232036180A.00497@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Perhaps dma wasn't the problem.  Here's the output when I execute hdparm
on /dev/hdc (my CD-RW):

/dev/hdc:
 HDIO_GET_MULTCOUNT failed: Input/output error
 IO_support   =  1 (32-bit)
 unmaskirq    =  1 (on)
 using_dma    =  1 (on)
 keepsettings =  0 (off)
 readonly     =  0 (off)
 BLKRAGET failed: Input/output error
 HDIO_GETGEO failed: Invalid argument

When I try to retrieve the read-ahead setting: hdparm -a /dev/hdc I get:

/dev/hdc:
 BLKRAGET failed: Input/output error

Does anyone know of a web site where I can research these errors?  Or
does anyone have an idea, off the top of their heads, why this could be
happening?



On Wed, 2002-10-23 at 16:36, pa3gcu wrote:
> On Wednesday 23 October 2002 19:20, Bryan Simmons wrote:
> > The CD-ROM in question is a CD-RW.  The system set it up as /dev/scd0
> > which is not accessible from hdparam.  if I turn it into an ide device,
> > I will no longer be able to write CDs with it.
> 
> You are missing the point, your cd-rom is no differnt to anyone else's, you 
> set things like dma with hdparm but you do it on the underlting device which 
> is /dev/hdX where X is a letter a b c or d.
> 
> a = master device primary controller.
> b = slave   device primary controller.
> c = master device sec controller.
> d = slave   device sec controller.
> 
> hdparm /dev/hdc shows drive info;
> hdparm -d1 /dev/hdc
> will set dma to "on" on drive "c" as per above. /dev/scd0 is irrelavant.
>  
> >
> > Does anyone know a way around this?  I can't hardly believe that all the
> > millions of Linux users have been, and still are, stuck with CD-RWs that
> > have to masquerade as SCSI devices.
> 
> There is no way around it, simply read the proper documentation, in this case 
> the CD-Writing HOWTO.
> IDE-ATAPI CD-RW devices only work with SCSI emulation as they only do in 
> widows as well.
> If you find a better way you can tell us millions how you did it then.
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
