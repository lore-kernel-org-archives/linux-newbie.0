From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Tue, 21 May 2002 20:48:14 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0205212048141L.27213@unix.pa3gcu>
References: <Pine.LNX.4.21.0205212006510.24300-100000@pppg_penguin.linux.bogus>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0205212006510.24300-100000@pppg_penguin.linux.bogus>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ken Moffat <ken@kenmoffat.uklinux.net>
Cc: linux-newbie@vger.kernel.org, Mark Johnson <rmjohnson144@adelphia.net>

On Tuesday 21 May 2002 19:25, Ken Moffat wrote:
> Copied back to the list.
>
> On Mon, 20 May 2002, Mark Johnson wrote:
> > I seem to have everything working fine for the cd-rw, I found a
> > modules.conf that was similar to the one Ray gave me and I tweaked it to
> > fit my system.  But I couldn't seem to duplicate cd's?  I have a dvd
> > already and it is not recognizing it, do I need to activate it with the
> > ide-scsi?  I tried adding the one line below to activate it but it
> > doesn't seem to show up.  I even tried to put hdc=ide-scsi in lilo.conf
> > to help point at, but still no luck?  any clues as to how to activate it
> > for the cd burner programs to read it.  here is my modules.conf:

I may be jumping in the middle of a converstion here, however from experiance 
my comments are pasted inbetween the lines below.

> > options ide-cd ignore=hdd        # tell the ide-cd module to ignore hdd
^^^^^^^^^^^^^^^^^^^^^^^^^^

Why exclude an ide cdrom, if i do not exclude my cdrom which is also /dev/hdd 
xcdroast finds it and i am able to use both cdroms.
exclude it and i cant use it in xcdroast.


> > alias scd0 sr_mod            # load sr_mod upon access of scd0
> > alias scd1 sr_mod            # load sr_mod upon access of scd1 <----
> > added from your file
> > #pre-install ide-scsi modprobe imm    # uncomment for some zip drives
> > only pre-install sg    modprobe ide-scsi    # load ide-scsi before sg
> > pre-install sr_mod modprobe ide-scsi    # load ide-scsi before sr_mod
> > pre-install ide-scsi modprobe ide-cd    # load ide-cd before ide-scsi
> >
> > I can access them both the dvd and cd-rw through linux ok, just not the
> > dvd with the cd burner programs (KOnCD or X-CD-Roast).  if I type
> > cdrecord --scanbus it only recognizes the cd-rw drive.

It will only see the cd-rw because you have excluded /dev/hdd via 
/etc/modules.conf

>
>  Strange, it's usually the writer that is the problem. I know nothing
> about KOnCD, but I've used X-CD-Roast to copy audio tracks from _my_
> CDROM, which is technically a DVD now that I think about it. I read you as
> saying you're trying to copy audio tracks.
>
>  Your modules.conf looks reasonable.

except "exclude /dev/hdd"

>
>  Both of my devices work through ide-scsi. If I want to mount a filesystem
> from them, one of them is/dev/scd0 and the other /dev/scd1. You say you
> can access the dvd ok through linux, except from the cdrecord or the
> graphical front ends, so which device do you access ?

You can indeed use ide-scsi for 2 cdrom devices, however xcdroast is somewhat 
funny when it comes to 2 scsi devices.

>
>  It's the best part of a year since I got my setup working, so the detail
> is getting a little hazy. I'm assuming both the DVD and the CDRW are ATAPI
> devices and using SCSI emulation, but your comment that you added the
> alias for scd1 makes me question exactly how you have them, and the
> kernel, configured. My memory says that if you compile ide-cd into the
> kernel you will not be able to use a CDRW as a scsi CDROM. Hmm, apart from
> writing to the CDRW, can you successfully mount an (iso) data CD in it
> using /dev/scd0 ?

Possably a question of having one ide device defined in /dev as (possably) 
/dev/cdrom1 > /dev/hdd ???

>
>  Also, which kernel ?

I dont think kernel version's come into this question, more a question of 
what is compiled into ones kernel.
I always say use a bog standard kernel (example of that is the distribution 
kernel installed when you installed linux). Too find out whats going on of 
course...

O yes and if my comments are considered unvalid, sorry..

>
> > -=Mark=-
> >
> > Ken Moffat wrote:
> > [snip my original posting]
>
> Ken

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
