From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slack9.0/Atapi-ZIP250???
Date: Mon, 30 Jun 2003 06:56:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030630065631.A148@lnx2.w8mch.ampr.org>
References: <20030628151407.A244@lnx2.w8mch.ampr.org> <200306290954.38827.James.Hatridge@epost.de>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200306290954.38827.James.Hatridge@epost.de>; from James.Hatridge@epost.de on Sun, Jun 29, 2003 at 09:54:32AM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 06-29, James Hatridge wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> Hi all....
> On Saturday 28 June 2003 21:14, Hal MacArgle wrote:
> > Greetings: Several days; RTFM, FAQ's, HOW-TO's - no joy...
> >
> > This box w/Slack8.0/2.4.18; running AOK with an Atapi ZIP250
> > internal, as /dev/sda4, as long as I insmod ide-scsi.o.. ( That file
> > also installs sd_mod.o )..
> 
> You're doing this wrong. I have the Atapi Zip100 internal. It does not need 
> the ide-scsi.co. Just set it up like this:
> 
> /dev/hdc4       /zip            auto    noauto,user 0 0
> 
> You only need the scsi stuff when using the external type Zip (which I also 
> have). 
> 
> Hope this helps,
> 
> 
> JIM

	Greetings and - Gad Zooks.. Where did you discover the above?
Everything I've read about ZIP drives say they _must_ use scsi
emulation.. Adding the above to /etc/fstab and then mounting
/dev/hdc4 on /zip worked with Slack9.0/2.4.20 but _not_ with
Slack8.0/2.4.18, which required ide-scsi.o.. All disks formatted with
ext2..

	I don't think I'll ever learn a thing about computers. Thanks
for the solution. Now I hope it'll work with NFS..Appreciate!!

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
                Proprietary  Formats  Unacceptable
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
