From: beolach@juno.com
Subject: Re: Strange Boot Behavior (cont.)
Date: Fri, 22 Aug 2003 12:55:21 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030822.125521.3860.0.beolach@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: swopecr@yahoo.com

On Fri, 22 Aug 2003 08:48:29 -0700 Ray Olszewski <ray@comarre.com>
writes:
> At 08:22 AM 8/22/2003 -0700, Christopher Swope wrote:
> [...]
> > > Have you tried putting the old drive on the Secondary IDE 
> channel?
> > > (In
> > > practice, this workaround may be your best bet.)
> >
> >I didn't.  Can one put a hard drive and CDROM on the same channel?  
> I
> >thought that that was not advised.
> 
> Well, I don't know what information source you are referring to, but 
> I know 
> of no problem with doing this, either in theory or in practice ... I 
> do it 
> myself here. There can be timing problems with CD *writing* if you 
> put a CD 
> *burner* on the same channel as a hard disk, *AND* you try to burn 
> an iso 
> image from that hard disk. But even that isn't a sure problem, just 
> a risk.
> 

As I understand it, there could be a performance loss when a hard disk
and a CD-ROM are attached to the same IDE Channel.  On some (most?) IDE
controllers, each IDE channel has to use the same transfer rate for all
devices attached, using the slowest of the two.  So if you attach a
UDMA100 harddisk to the same channel as a UDMA33 CD-ROM, you may only
get 1/3 of the theoretical potential performance of your harddrive.  So
I wouldn't recommend this configuration for a long term solution, but
for testing purposes in troubleshooting boot problems, there should not
be any major problems with a hard disk & CD-ROM on the same channel.

One question I had as I followed this thread was about the jumper
settings you described in an earlier message...

> Note also that I have tested nearly every jumper setting for the
> secondary drive.  The only option I did not try was setting the
> secondary drive to master w/ slave present.  That setting requires
> two jumpers, and I don't have an extra one.

In my experience with hard drives (admitibly no more extensive than
normal) I have never seen a jumper configuration that required two
jumpers; or even more that three settings: Master, Slave, and CS.  The
jumper settings are of course manufacturer & drive specific, so you
probably know better than me, but I am curious about what brand/model
the drives are.  And it can't hurt to double (or quadruple... I think
you said you've already done this) check the documentation on the jumper
settings.

Wish you luck,
Conway S. Smith

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
