From: cr <cr@orcon.net.nz>
Subject: Re: How to mount CD-ROM?
Date: Thu, 28 Nov 2002 01:02:57 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021128071041.0B551109254@smtp.orcon.net.nz>
References: <5.1.0.14.1.20021031075555.020ce520@celine> <5.1.0.14.1.20021118083008.020d92e0@celine>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021118083008.020d92e0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Tuesday 19 November 2002 05:54, Ray Olszewski wrote:
> Comments inline.
>
> At 11:58 PM 11/18/02 +1300, cr wrote:
> >Sorry for the long delay.   Real Life (TM) interfered with my
> > investigations, and also a point you mentioned brought up a possible
> > complication which I'll mention at the end...
>
> Perfectly understandable. I hope you will be equally understanding ... the
> long gap between my last message and your reply today means that I do not
> recall the details of the prior discussion very well. So please forgive me
> if I suggest here something I've already suggested (or you've previously
> tried).

The delay's my fault, and you're being helpful, I would be ungrateful indeed 
(and very silly) if I complained about minor repetitions.    :)

Having said that, as you may notice from my reply to Lawson, running depmod 
seems to have changed things somewhat in that  mount  now works and 
X-CD-Roast doesn't.   I think a little careful experimentation and checking 
is in order.


> >
> >Trying to run X-CD-Roast gives an error message 'Failed to scan SCSI-bus'
> >*but* lsmod indicates it's loaded a couple of modules:
> >
> >Module                  Size  Used by
> >sg                     27488   0  (autoclean) (unused)
> >scsi_mod               92208   1  (autoclean) [sg]
> >esssolo1               25376   0  (autoclean)
> >..
> >..
> >
> >Then (but not before), /sbin/insmod ide-scsi works, after which X-CD-Roast
> >works.
>
> As I check my setup, it appears that sr_mod needs an argument that tells it
> what device to attach to. See if adding that helps. Here, as an example, is
> what I do (in /etc/modules)
>
>          # the stuff to enable ide-scsi emulation for the CD-ROM
>          scsi_mod
>          sr_mod scd0
>          sg
>          ide-scsi

> >However, trying to mount /mnt/cdrom still brings up a 'wrong fs type'
> >message.
>
> This is where my hazy memory of our prior discussion raises problems. Most
> lilely, this is the direct result of sr_mod not loading. So address that
> first off.

Well, (apparently) as a result of running depmod, I can now mount /mnt/cdrom  
even though /sbin/lsmod does *not* show sr_mod to be loaded.   sg, scsi_mod 
and ide-scsi are loaded.

/sbin/insmod sr_mod scd0   works (i.e. sr_mod appears in the listing from 
lsmod) but seems to make no difference to mounting or X-CD-Roast.   

> If that's not it ... is /etc/cdrom properly symlinked, probably to
> /dev/scd0? (I can't check my system for the right answer, because it has
> both a CD-R and a DVD drve, and /dev/cdrom symlinks to the DVD.) Does the
> same thing happen if you try to mount /dev/scd0 someplace.

I think '/etc/cdrom' is a misprint?  /dev/cdrom is linked to /dev/hdb.

I tried mounting /dev/scd0, got /dev/scd0: unknown device.

It's rather late at night now, I'm not thinking too clearly.   I think I need 
to sit down and work this out carefully before I can ask any intelligent 
questions.   

Thanks

Chris

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
