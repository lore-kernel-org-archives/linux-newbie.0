From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Moving Hard Drive
Date: Sat, 17 Jan 2004 10:53:50 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401171053.50808.pa3gcu@zeelandnet.nl>
References: <20040117031622.B31C01C900@heisspf> <4008D441.6090009@sancharnet.in>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4008D441.6090009@sancharnet.in>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: gracecott@sancharnet.in, Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Saturday 17 January 2004 07:20, joy wrote:
> Peter wrote:
> >I can tell the floppy to boot into hda* and in SlackWare (there is the SW)
> > I have anyhow a bootable live rescue disc.
> >
> >Regards
>
> Since you are on lilo ,  it would be easier to type on the lilo prompt

Thats the point, if he "moves" /dev/hda to /dev/hdc then he "wont" have lilo 
on his MBR, or at least not under normal curcumstancies.

One can place lilo where he/she wants via /etc/lilo.conf, leave disks where 
they are and use the mobo's boot option to choose which ever disk to boot 
from, if of course one has a recent motherboard and a BIOS which supports 
booting from all devices, that option has been around for a few years now so 
chances are there is no real need to move devices around anyway.

> root=/dev/hda(something - your root partiton)
> for it to boot  thru instaed of all  the fuss with boot disks and rescue
> cds .
> then edit fstab and lilo.conf
>
> Joy


-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
