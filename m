From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: USB Flash Drive??
Date: Fri, 1 Aug 2003 14:25:48 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030801142548.A276@lnx2.w8mch.ampr.org>
References: <20030731.122614.5706.281202@webmail08.lax.untd.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030731.122614.5706.281202@webmail08.lax.untd.com>; from beolach@juno.com on Thu, Jul 31, 2003 at 07:26:03PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings and thanks for the comments and pointer.. The thread was
interesting in that it seems some of those sticks are formatted vfat
and mine umsdos; not that I'm completely clear on the relationship
between all this.. <g>

"Crack the book" time again... 

Appreciate!

Hal

On 07-31, beolach@juno.com wrote:
> 
> I have no personal experience with memory sticks, but I think you
> should be able to reformat them with any filesystem you want to,
> but keep in mind that it would then be unreadable in M$.  So if
> you want it to be portable at all, keep it as vfat.
> 
> For somewhat related info see:
> <http://www.linuxquestions.org/questions/showthread.php?threadid=69332>
> 
> Hope that helps,
> Conway S. Smith
> 
> --- Hal MacArgle <haltec@kvinet.com> wrote:
> > 
> > Greetings: Just getting my feet wet with USB on a Slackware9.0,
> > 2.4.20 box, and a 64mB Flash Disk "stick."
> > 
> > Enabling BIOS - 2.4.20 found it and loaded the necessary modules OK.
> > Slick..
> > 
> > However - mount reports the fstype as umsdos.. I note I can also
> > mount the device as msdos or vfat OK and use mcopy to manipulate
> > files.. cp also works but reports an error, copying the file anyway.
> > 
> > I can find no information though as to if I can reformat the stick as
> > ext2 or ext3..
> > 
> > Has anyone done this? At this point I'm afraid to try.. <grin>
> > 
> > TIA and Cheers,
> > 
> >     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
> >                 Proprietary  Formats  Unacceptable
> > .
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
