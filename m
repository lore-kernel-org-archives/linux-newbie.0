From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slack9.0/Atapi-ZIP250???
Date: Mon, 30 Jun 2003 07:12:46 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030630071246.B148@lnx2.w8mch.ampr.org>
References: <20030628151407.A244@lnx2.w8mch.ampr.org> <Pine.LNX.4.53.0306282315540.594@reg_kipling>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.53.0306282315540.594@reg_kipling>; from ken@kenmoffat.uklinux.net on Sat, Jun 28, 2003 at 11:23:45PM +0100
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-28, Ken Moffat wrote:
> On Sat, 28 Jun 2003, Hal MacArgle wrote:
> 
> Hal,
> 
>  I'll guess you need sr_mod.  The following are clipped from
> modules.conf on this box, I believe they are the part that sets up the
> zip drive (I know, I used to understand how my modules.conf worked, but
> once it was all correct I didn't need to remember any more.)
> 
> alias scsi_hostadapter ide-scsi
> pre-install sr_mod modprobe ide-scsi
> pre-install ide-scsi modprobe scsi_mod
> 
>  However, I believe the easier method is to use `modprobe' instead of
> `insmod' - if my memory is correct, it knows enough about the
> dependencies to get them sorted.
> 
> Ken
> 
Greetings and thanks for your suggestions.. The problem with 2.4.20
is that both sr_mod and sd_mod are no longer evident in the
distribution, even though rc.modules has them listed.. 
..../kernel/drivers/scsi now has at least 30-40 modules with
different titles than previously.. There has got to be some docs
somewhere that will explain the changes - I hope... <grin>


Slackware9.0 is a new ball game compared to what I've been used to
with v8.0 and before.. Apparently some of the files have been carried
over from the older distributions - probably overlooked at this point
in time.. No wonder with all the complexities involved..

Anyway - Jim Hatridges' scheme on another post, accessing the drive as
/dev/hdc4, works - not needing the ide-scsi.o module.. Go figure...

The more I learn about computers the less I know... <grin> Thanks
again, and Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
